from django.shortcuts import render
from django.db.models import Prefetch
from rest_framework.response import Response
from rest_framework import viewsets,generics,status
from rest_framework.views import APIView
from .models import *
from .paginations import DefaultPagination
from .permissions import CheckPaymentPermission, PayMomoPermission
from .serializer import *
from .util import *

class CustomerViewset(viewsets.ViewSet, generics.CreateAPIView):
    queryset = Customers.objects.all()
    serializer_class = CustomerSerializer

    def retrieve(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return Response(status = status.HTTP_200_OK, data = self.serializer_class(request.user,context={'request':request}).data)
        else:
            return Response(status = status.HTTP_403_FORBIDDEN, data = {'message': 'không có quyền truy cập'})

    def update(self, request, *args, **kwargs):
        update_data = request.data
        for key in update_data:
            if key in ['username', 'password', 'role', 'is_superuser', 'is_staff']:
                return Response(status=status.HTTP_403_FORBIDDEN,
                                data={'message': 'ban khong co quyen sua doi thong tin nay'})

        checkserializer = self.serializer_class(data = update_data, partial=True)

        if checkserializer.is_valid():
            customer = request.user
            for key in update_data:
                customer.__setattr__(key, update_data[key])

            customer.save()
            return Response(status=status.HTTP_202_ACCEPTED, data = self.serializer_class(customer).data)
        else:
            return Response(status=status.HTTP_400_BAD_REQUEST, data={'message': "Loi du lieu, xin kiem tra lai"})

class ProductViewset(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    pagination_class = DefaultPagination

    def list(self, request):
        q = request.query_params.get('q')
        cateList = request.query_params.get('cateList')
        cate= request.query_params.get('cate')
        if(q):
            self.queryset = Product.objects.filter(name__icontains = q)
        if(cateList):
            self.queryset = Product.objects.filter(category__categoryList__id = cateList)
        if (cate and cate != 0):
            self.queryset = Product.objects.filter(category__id = cate)
        print(self.queryset)
        page = self.paginate_queryset(self.queryset)
        return self.get_paginated_response(self.serializer_class(page,many=True,context={'request':request}).data)


class OrderViewset(viewsets.ViewSet, generics.CreateAPIView, generics.ListAPIView):
    queryset = Order.objects.all().prefetch_related(
        Prefetch('orderdetail_set')
    )
    serializer_class = OrderSerializer

    def list(self, request):
        print(request.user)
        if request.user.is_authenticated:
            self.queryset = Order.objects.filter(customers=request.user)
            return Response(status=status.HTTP_200_OK, data=self.serializer_class(self.queryset,many=True).data)
        else:
            return Response(status=status.HTTP_403_FORBIDDEN, data={"message": "không có quyền truy cập"})

    def create(self, request):
        orderData = request.data
        orderDetailData = orderData['details']
        del orderData['details']
        try:
            orderData['customers'] = request.user
            order = Order.objects.create(**orderData)
            for detail in orderDetailData:
                product = Productdetail.objects.get(pk=detail['pID'])
                if product.quantity >= detail['quantity']:
                    product.quantity -= detail['quantity']
                    product.sold_quantity += detail['quantity']
                    product.save()

                else:
                    order.delete()
                    return Response(status=status.HTTP_400_BAD_REQUEST, data={"message": "so luong hang trong kho khong du"})

                order_detail = OrderDetail.objects.create(order = order, product = product, quantity = detail['quantity'])
                order_detail.save()
            order.save()
            return Response(status=status.HTTP_201_CREATED, data=self.serializer_class(order).data)

        except Exception as e:
            return Response(status=status.HTTP_400_BAD_REQUEST, data={"message": e.__class__.__str__(e)})


class CategoryListViewset(viewsets.ViewSet, generics.ListAPIView):
    queryset = CategoryList.objects.all()
    serializer_class = CategoryListSerializer

class CategoryViewset(viewsets.ViewSet, generics.ListAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer

    def list(self,request):
        id = request.query_params.get('id')
        if id:
            self.queryset = Category.objects.filter(categoryList__id = id)
        return Response(status=status.HTTP_200_OK, data=self.serializer_class(self.queryset,many=True).data)

class PayMomoViewset(APIView):

    permission_classes = [PayMomoPermission]
    def post(self, request):

        result = pay_momo(self, request.data)
        if result['code'] == 200:
            return Response(status=status.HTTP_200_OK, data=result['data'])
        if result['code'] == 400:
            return Response(status=status.HTTP_400_BAD_REQUEST, data=result['data'])
        else:
            return Response(status=status.HTTP_500_INTERNAL_SERVER_ERROR, data=result['data'])

class NotifyMomoViewset(APIView):

    def post(self,request):
        data = notify_momo(self,request.data)
        return Response(status=status.HTTP_200_OK, content_type="application/json;charset=UTF-8", data=data)


class CheckPaymentViewset(APIView):

    permission_classes = [CheckPaymentPermission]

    def post(self,request):
        result = check_payment(self, request.data)
        if result['code'] == 200:
            return Response(status = status.HTTP_200_OK, data= result['data'])
        if result['code'] == 400:
            return Response(status=status.HTTP_400_BAD_REQUEST, data=result['data'])
        else:
            return Response(status=status.HTTP_500_INTERNAL_SERVER_ERROR, data=result['data'])


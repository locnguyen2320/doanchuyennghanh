from rest_framework import serializers
from rest_framework.fields import SerializerMethodField
from rest_framework.serializers import ModelSerializer
from .models import *

class CustomerSerializer(ModelSerializer):
    class Meta:
        model = Customers
        fields = ['id','username','password','first_name','last_name','email','phone','address','avatar']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        cus = Customers(**validated_data)
        cus.set_password(validated_data['password'])
        cus.save()

        return cus

class ProductdetailSerializer(ModelSerializer):
    name = SerializerMethodField(read_only=True)

    def get_name(self, obj):
        return obj.product.name
    class Meta:
        model = Productdetail
        fields = ['id','name','size','color']

class OrderdetailSerializer(ModelSerializer):
    product = ProductdetailSerializer()
    class Meta:
        model = OrderDetail
        fields=['id','quantity','product']

class OrderSerializer(ModelSerializer):
    orderdetail_set = OrderdetailSerializer(many=True)
    class Meta:
        model = Order
        fields=['id','total','created_date','status','shipped_date','customers', 'orderdetail_set']

class CategorySerializer(ModelSerializer):
    class Meta:
        model=Category
        fields=['id','name']

class CategoryListSerializer(ModelSerializer):
    class Meta:
        model = CategoryList
        fields = ['id','name']

class ProductSerializer(ModelSerializer):
    productdetail_set = ProductdetailSerializer(many=True,read_only=True)
    category = CategorySerializer(read_only=True)
    class Meta:
        model = Product
        fields = ['id','name','price','image','description', 'productdetail_set', 'category']


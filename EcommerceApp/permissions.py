from rest_framework import permissions

from EcommerceApp.models import Order

class PayMomoPermission(permissions.BasePermission):

    def has_permission(self, request, view):
        return request.user

class CheckPaymentPermission(permissions.BasePermission):

    def has_permission(self, request, view):
        if request.user.is_authenticated:
            return Order.objects.filter(customers = request.user).first()
        else:
            return False
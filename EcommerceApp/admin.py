from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import *
from django.contrib.auth.admin import UserAdmin as UserSite
from django.contrib.auth.models import Permission, Group

class EcommerceAdminSite(admin.AdminSite):

    site_header = 'Trang quản trị hệ thống bán hàng trực tuyến'

class OrderDetailInline(admin.StackedInline):
    model = OrderDetail

class PaymentInlineAdmin(admin.StackedInline):
    model = Payment

class OrderAdmin(admin.ModelAdmin):

    list_filter =  ['created_date', 'shipped_date', 'status']
    search_fields = ['customer', 'seller']
    inlines = [OrderDetailInline, PaymentInlineAdmin]

class CustomerAdmin(UserSite):

    fieldsets = (
        ("User Login", {'fields': ('username',)}),
        ("Permission", {'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')}),
        ("Information", {'fields': ('email', 'first_name', 'last_name', 'avatar','address', 'phone')}),
    )

    add_fieldsets = (
        ("User Login", {'fields': ('username', 'password1', 'password2')}),
        ("Permission", {'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')}),
        ("Information", {'fields': ('email', 'first_name', 'last_name', 'avatar', 'address', 'phone')})
    )

class ProductDetailInline(admin.StackedInline):
    model = Productdetail

class ProductAdmin(admin.ModelAdmin):
    inlines = [ProductDetailInline]

    list_filter = ['created_date', 'category']
    search_fields = ['name']

admin_site = EcommerceAdminSite(name= "myadmin")

admin_site.register(Customers,CustomerAdmin)
admin_site.register(Order,OrderAdmin)
admin_site.register(Product,ProductAdmin)
admin_site.register(Category)
admin_site.register(CategoryList)


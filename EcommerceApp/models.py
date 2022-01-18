from django.contrib.auth.models import AbstractUser
from django.core.validators import MinValueValidator
from django.db import models

class Customers(AbstractUser):
    avatar=models.ImageField('customers/',default=None,blank=True)
    address=models.CharField(max_length=100)
    email=models.CharField(max_length=50)
    phone = models.CharField(max_length=11, unique=True, blank=True)

class Order(models.Model):
    customers=models.ForeignKey('Customers',on_delete=models.CASCADE)
    total=models.BigIntegerField()
    created_date=models.DateTimeField(auto_now_add=True)
    shipped_date = models.DateTimeField(default=None, null=True)
    class STATUS(models.IntegerChoices):
        pending=1, ('Pending')
        delivery=2, ('Delivery')
        success=3, ('Success')
        destroy=4, ('Destroy')
    status = models.IntegerField(choices=STATUS.choices,default=1)

    class PAYMENT(models.IntegerChoices):
        in_person = 1, ('pay in person'),
        momo = 2, ('pay with momo')
    payment_type = models.IntegerField(choices=PAYMENT.choices,default=1)

class Payment(models.Model):
    momo_id = models.BigIntegerField()
    order = models.OneToOneField('Order', on_delete=models.CASCADE)

class OrderDetail(models.Model):
    order=models.ForeignKey('Order',on_delete=models.CASCADE)
    quantity=models.IntegerField(validators=[MinValueValidator(1)])
    product = models.ForeignKey('Productdetail', on_delete=models.CASCADE, default=1 )

class Category(models.Model):
    name=models.CharField(max_length=50)
    categoryList = models.ForeignKey('CategoryList', on_delete=models.CASCADE)

    def __str__(self):
        return self.name

class CategoryList(models.Model):
    name=models.CharField(max_length=1000)
    def __str__(self):
        return self.name
class Product(models.Model):
    image=models.ImageField(upload_to='product/',default=None,blank=True)
    name=models.CharField(max_length=100)
    price = models.BigIntegerField(validators=[MinValueValidator(1)])
    description=models.CharField(max_length=200)
    category=models.ForeignKey('Category',on_delete=models.CASCADE)
    created_date = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.name

class Productdetail(models.Model):

    SIZE_PRODUCT={
        ('S','SMALL'),
        ('M','MEDIUM'),
        ('L','LARGE'),
        ('XL','EXTRA LARGE')
    }
    size = models.CharField(max_length=2,choices=SIZE_PRODUCT,default='S')
    color=models.CharField(max_length=50)
    quantity = models.IntegerField(validators=[MinValueValidator(1)])
    sold_quantity = models.IntegerField(validators=[MinValueValidator(0)], default=0)
    product=models.ForeignKey('Product',on_delete=models.CASCADE)












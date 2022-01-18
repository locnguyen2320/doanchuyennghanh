from django.urls import include, path
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register('customer', views.CustomerViewset)
router.register('product', views.ProductViewset)
router.register('order', views.OrderViewset)
router.register('category', views.CategoryViewset)
router.register('categorylist', views.CategoryListViewset)

urlpatterns = [
    path('', include(router.urls)),
    path('paymomo/', views.PayMomoViewset.as_view()),
    path('notifymomo/', views.NotifyMomoViewset.as_view()),
    path('checkpayment/', views.CheckPaymentViewset.as_view())
]
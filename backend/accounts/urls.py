# accounts/urls.py
from django.urls import path
from .views import login_view

urlpatterns = [
    path('doctor/', login_view, name='doctor'),
]

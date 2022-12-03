# login/urls.py

from django.urls import path
from . import views

urlpatterns = [
    path('regist_user', views.RegistUser.as_view(), name='regist_user'),

]

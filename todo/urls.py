# todo/urls.py

from django.urls import path
from . import views

urlpatterns = [
    path('create', views.TaskCreate.as_view(), name='create'),
    path('select', views.TaskSelect.as_view(), name='select'),
    path('', views.Todo.as_view(), name='todo')
    ]

from django.urls import path
from . import views

urlpatterns = [
    path('', views.test, name='index'),
    path('login/', views.test, name='login'),
    path('signup/', views.test, name='signup'),
    path('question/<id>/', views.test, name='question'),
    path('question/', views.test, name='question1'),
    path('ask/', views.test, name='ask'),
    path('popular/', views.test, name='popular'),
    path('new/', views.test, name='new'),
]

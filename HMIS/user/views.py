from django.shortcuts import render
from rest_framework.decorators import api_view,permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from .models import Doctor,Nurse,StoreManager,Receptionist
from rest_framework_simplejwt.views import TokenObtainPairView
from django.contrib.auth.models import User


# Create your views here.
class CustomTokenObtainPairView(TokenObtainPairView):
    def post(self, request, *args, **kwargs):
        roles = [Doctor,Nurse,StoreManager,Receptionist]
        request.roles = roles
        response = super().post(request, *args, **kwargs)        
        userobj = User.objects.get(username = response.data['data']['username'])
        if userobj.doctor_set.all():
            response.data['role'] = 'doctor'
        elif userobj.receptionist_set.all():
            response.data['role'] = 'receptionist'
        elif userobj.storemanager_set.all():
            response.data['role'] = 'storemanager'
        elif userobj.nurse_set.all():
            response.data['role'] = 'nurse'
        return response


     
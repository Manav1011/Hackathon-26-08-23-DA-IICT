from django.shortcuts import render
from rest_framework.decorators import api_view,permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from . import models
from user.models import Receptionist

@api_view(['POST'])
@permission_classes([IsAuthenticated])
def patient_registration(request):
    response = {'data':False,"is_authenticated":False}    
    if Receptionist.objects.filter(user=request.user).first():        
        response['is_authenticated']= True
        try:            
            data = request.data
            patient = models.Patient(name=data['name'],email=data['email'],dob=data['dob'],gender=data['gender'],blood_group=data['blood_group'],address=data['address'],aadhar=data['aadhar'],aabhar=data['aabhar'])            
            patient.save()
            response['data'] = True
        except Exception as e:                 
            response['data'] = False        
    else:
        response['is_authenticated'] = False
    return Response(response)        
    

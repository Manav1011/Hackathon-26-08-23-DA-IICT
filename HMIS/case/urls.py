from django.urls import path
from . import views

urlpatterns = [
    path('patient_registration/',views.patient_registration,name='patient_registration')
]

from django.db import models
from user.models import Doctor,Nurse,StoreManager

# Create your models here.

class Patient(models.Model):
    name = models.CharField(max_length=256)
    email = models.EmailField(blank=True,null=True)
    dob = models.DateField()
    gender = models.CharField(max_length=256,choices=[('Male','male'),('Female','femaile'),('Othter','other')])
    blood_group = models.CharField(max_length=5,blank=True,null=True)
    contact = models.CharField(max_length=10)
    address = models.TextField()
    aadhar = models.CharField(max_length=12)
    aabhar = models.CharField(max_length=256)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.name

class Case(models.Model):
    patient = models.ForeignKey(Patient,on_delete=models.DO_NOTHING)
    symptoms = models.TextField()
    assigned_doctor = models.ForeignKey(Doctor,on_delete=models.DO_NOTHING)
    assigned_nurse = models.ForeignKey(Nurse,blank=True,null=True,on_delete=models.DO_NOTHING)
    diagnostic = models.TextField()
    treatment = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.id

class Medicine(models.Model):
    name = models.CharField(max_length=256)
    sale_type = models.CharField(max_length=256)
    manufacturer = models.CharField(max_length=256)
    salt = models.TextField()
    price = models.CharField(max_length=256)
    quantity = models.PositiveIntegerField(max_length=5)
    uses = models.TextField()
    working = models.TextField()
    side_effect = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.name

class Prescriptions(models.Model):
    case = models.ForeignKey(Case,on_delete=models.DO_NOTHING)
    prescription = models.TextField()
    medicine = models.ManyToManyField(Medicine)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.id


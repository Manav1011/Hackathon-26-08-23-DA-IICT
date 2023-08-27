from django.db import models
from user.models import Doctor,Nurse,StoreManager
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.core.mail import send_mail

# Create your models here.
class Patient(models.Model):
    name = models.CharField(max_length=256)
    email = models.EmailField(blank=True,null=True)
    dob = models.DateField()
    gender = models.CharField(max_length=256,choices=[('Male','male'),('Female','femaile'),('Othter','other')])
    blood_group = models.CharField(max_length=5,blank=True,null=True)
    contact = models.CharField(max_length=10,blank=True,null=True)
    address = models.TextField(blank=True,null=True)
    aadhar = models.CharField(max_length=12,blank=True,null=True)
    aabhar = models.CharField(max_length=256,blank=True,null=True)
    bllod_pressure = models.CharField(max_length=256,blank=True,null=True)
    height = models.CharField(max_length=256,blank=True,null=True)
    weight = models.CharField(max_length=256,blank=True,null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return str(self.name)
    


class Case(models.Model):
    patient = models.ForeignKey(Patient,on_delete=models.CASCADE)
    symptoms = models.TextField(null=True,blank=True)
    assigned_doctor = models.ForeignKey(Doctor,on_delete=models.DO_NOTHING,null=True,blank=True)
    assigned_nurse = models.ForeignKey(Nurse,blank=True,null=True,on_delete=models.DO_NOTHING)
    diagnostic = models.TextField(null=True,blank=True)
    treatment = models.TextField(null=True,blank=True)
    created_at = models.DateTimeField(auto_now_add=True,)
    updated_at = models.DateTimeField(auto_now=True)
    status = models

    def __str__(self) -> str:
        return str(self.id)

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



@receiver(post_save, sender=Patient)
def send_case_id(sender,instance,created,**kwargs):    
    if created:              
        obj = Case(patient=instance)        
        obj.save()        

@receiver(post_save, sender=Case)
def send_case_id(sender,instance,created,**kwargs):    
    if created:
        send_mail(
            "Case ID",
            f"Here is your CASE ID - {instance.id}",
            "test-dev-ldce@iskconkathwada.org",
            [instance.patient.email],
            fail_silently=False,
        )
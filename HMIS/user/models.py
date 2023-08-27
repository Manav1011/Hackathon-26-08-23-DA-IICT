from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Specialization(models.Model):
    SPECIALIZATION_CHOICES = [
    ('cardiology', 'Cardiology'),
    ('orthopedics', 'Orthopedics'),
    ('neurology', 'Neurology'),
    ('dermatology', 'Dermatology'),
    ('gastroenterology', 'Gastroenterology'),
    ('oncology', 'Oncology'),
    ('pediatrics', 'Pediatrics'),
    ('radiology', 'Radiology'),
    ('surgery', 'Surgery'),
    ('urology', 'Urology'),    
    ]
    choices = models.CharField(max_length=256,choices=SPECIALIZATION_CHOICES)

    def __str__(self) -> str:        
        return self.choices
class Doctor(models.Model):    
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    specialization = models.ForeignKey(Specialization,on_delete=models.DO_NOTHING,default=1)
    shift_timing = models.CharField(max_length=256)

    def __str__(self):
        return self.user.username

class Nurse(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    shift_timing = models.CharField(max_length=256)

    def __str__(self):
        return self.user.username

class Receptionist(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username

class StoreManager(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    
    def __str__(self):
        return self.user.username



from django.contrib import admin
from . import models
# Register your models here.
admin.site.register(models.Case)
admin.site.register(models.Prescriptions)
admin.site.register(models.Medicine)
admin.site.register(models.Patient)
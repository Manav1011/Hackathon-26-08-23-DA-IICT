# Generated by Django 4.2.4 on 2023-08-26 19:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('case', '0003_alter_case_assigned_doctor_alter_case_diagnostic_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='case',
            name='patient',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='case.patient'),
        ),
    ]

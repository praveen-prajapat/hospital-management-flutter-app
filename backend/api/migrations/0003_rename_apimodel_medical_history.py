# Generated by Django 4.2.2 on 2023-09-12 13:41

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_apimodel_delete_react'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='APIModel',
            new_name='medical_history',
        ),
    ]
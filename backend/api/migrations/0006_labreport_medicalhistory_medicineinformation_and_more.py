# Generated by Django 4.2.2 on 2023-09-12 16:11

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0005_remove_medical_history_presc_img'),
    ]

    operations = [
        migrations.CreateModel(
            name='LabReport',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('report_name', models.CharField(max_length=100)),
                ('report_pdf', models.FileField(upload_to='medical_history/lab_reports')),
            ],
        ),
        migrations.CreateModel(
            name='MedicalHistory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_of_visit', models.DateField()),
                ('doctors_name', models.CharField(max_length=100)),
                ('presc_img', models.FileField(upload_to='medical_history/prescription')),
            ],
        ),
        migrations.CreateModel(
            name='MedicineInformation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('medicine_name', models.CharField(max_length=100)),
                ('quantity', models.PositiveIntegerField()),
                ('price', models.DecimalField(decimal_places=2, max_digits=10)),
            ],
        ),
        migrations.CreateModel(
            name='PharmacyDetails',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pharmacist', models.CharField(max_length=100)),
                ('date_received', models.DateField()),
                ('medical_history', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.medicalhistory')),
            ],
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('ldap_id', models.CharField(max_length=15)),
                ('ldap_pass', models.CharField(max_length=20)),
                ('address', models.TextField(blank=True, null=True)),
                ('city', models.CharField(blank=True, max_length=255, null=True)),
                ('country', models.CharField(blank=True, max_length=255, null=True)),
                ('pincode', models.IntegerField(blank=True, null=True)),
                ('bld_grp', models.CharField(choices=[('A+', 'A+'), ('A-', 'A-'), ('B+', 'B+'), ('B-', 'B-'), ('AB+', 'AB+'), ('AB-', 'AB-'), ('O+', 'O+'), ('O-', 'O-')], max_length=3)),
                ('phone_num', models.CharField(blank=True, max_length=255, null=True)),
                ('email', models.EmailField(max_length=254)),
                ('age', models.PositiveIntegerField()),
                ('weight_kg', models.DecimalField(decimal_places=2, max_digits=5)),
                ('branch', models.CharField(choices=[('Computer Science', 'Computer Science'), ('Electrical Engineering', 'Electrical Engineering'), ('Mechanical Engineering', 'Mechanical Engineering'), ('Civil Engineering', 'Civil Engineering')], max_length=50)),
                ('gender', models.CharField(blank=True, choices=[('M', 'Male'), ('F', 'Female'), ('O', 'Other')], max_length=255, null=True)),
                ('yearofstudy', models.CharField(blank=True, choices=[('1', 'First Year'), ('2', 'Second Year'), ('3', 'Third Year'), ('4', 'Fourth Year'), ('5', 'Fifth Year'), ('16', '6th Standard'), ('17', '7th Standard'), ('18', '8th Standard'), ('19', '9th Standard'), ('20', '10th Standard'), ('21', '11th Standard'), ('22', '12th Standard'), ('23', 'Graduated')], max_length=255, null=True)),
            ],
        ),
        migrations.DeleteModel(
            name='medical_history',
        ),
        migrations.AddField(
            model_name='medicineinformation',
            name='pharmacy_details',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.pharmacydetails'),
        ),
        migrations.AddField(
            model_name='medicalhistory',
            name='student',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.student'),
        ),
        migrations.AddField(
            model_name='labreport',
            name='medical_history',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.medicalhistory'),
        ),
    ]

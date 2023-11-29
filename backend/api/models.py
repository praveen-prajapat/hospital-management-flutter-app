from collections.abc import Iterable
from django.db import models
from datetime import date
from django.contrib.auth.models import User
# from accounts.models import CustomUser

def default_date():
    return date.today()

# Model for Students
class Student(models.Model):
    Name = models.CharField(max_length=100)
    Gender = models.CharField(choices=[
        ('M', 'Male'),
        ('F', 'Female'),
        ('O', 'Other'),
    ], max_length=255, null=True, blank=True)
    LDAP_ID = models.CharField(max_length=15, unique=True)
    LDAP_PASS = models.CharField(max_length=20)
    Face_Image = models.ImageField(upload_to='doctors', null=True, blank=True)
    Phone = models.CharField(max_length=255, null=True, blank=True)
    Email =  models.EmailField()
    Address = models.TextField(blank=True, null=True)
    City = models.CharField(max_length=255, null=True, blank=True)
    Country = models.CharField(max_length=255, null=True, blank=True)
    Pincode = models.IntegerField(blank=True, null=True)
    Branch = models.CharField(max_length=500, choices=[
        ('Computer Science and Engineering', 'Computer Science and Engineering'),
('Electrical Engineering', 'Electrical Engineering'),
('Mechanical Engineering', 'Mechanical Engineering'),
('Civil Engineering', 'Civil Engineering'),
('Aerospace Engineering', 'Aerospace Engineering'),
('Chemical Engineering', 'Chemical Engineering'),
('Metallurgical Engineering and Materials Science', 'Metallurgical Engineering and Materials Science'),
('Materials Engineering', 'Materials Engineering'),
('Energy Science and Engineering', 'Energy Science and Engineering'),
('Environmental Science and Engineering', 'Environmental Science and Engineering'),
('Systems and Control Engineering', 'Systems and Control Engineering'),
('Mechanical Engineering with M.Tech. in Thermal Systems Design', 'Mechanical Engineering with M.Tech. in Thermal Systems Design'),
('Mechanical Engineering with M.Tech. in Design', 'Mechanical Engineering with M.Tech. in Design'),
('Mechanical Engineering with M.Tech. in Manufacturing', 'Mechanical Engineering with M.Tech. in Manufacturing'),
('Mechanical Engineering with M.Tech. in Computer Integrated Manufacturing', 'Mechanical Engineering with M.Tech. in Computer Integrated Manufacturing'),
('Mechanical Engineering with M.Tech. in Computational and Applied Mechanics', 'Mechanical Engineering with M.Tech. in Computational and Applied Mechanics'),
('Chemical Engineering with M.Tech. in Process Engineering', 'Chemical Engineering with M.Tech. in Process Engineering'),
('Chemical Engineering with M.Tech. in Environmental Engineering and Management', 'Chemical Engineering with M.Tech. in Environmental Engineering and Management'),
('Electrical Engineering with M.Tech. in Microelectronics', 'Electrical Engineering with M.Tech. in Microelectronics'),
('Electrical Engineering with M.Tech. in Communication Engineering', 'Electrical Engineering with M.Tech. in Communication Engineering'),
('Electrical Engineering with M.Tech. in Control and Computing', 'Electrical Engineering with M.Tech. in Control and Computing'),
('Electrical Engineering with M.Tech. in Power Electronics and Power Systems', 'Electrical Engineering with M.Tech. in Power Electronics and Power Systems'),
('Electrical Engineering with M.Tech. in Electronics and Communication Engineering', 'Electrical Engineering with M.Tech. in Electronics and Communication Engineering'),
('Electrical Engineering with M.Tech. in Power Systems and Power Electronics', 'Electrical Engineering with M.Tech. in Power Systems and Power Electronics'),
('Electrical Engineering with M.Tech. in Microelectronics', 'Electrical Engineering with M.Tech. in Microelectronics'),
('Mechanical Engineering with M.Tech. in Thermal and Fluids Engineering', 'Mechanical Engineering with M.Tech. in Thermal and Fluids Engineering'),
('Mechanical Engineering with M.Tech. in Design', 'Mechanical Engineering with M.Tech. in Design'),
('Mechanical Engineering with M.Tech. in Manufacturing', 'Mechanical Engineering with M.Tech. in Manufacturing'),
('Mechanical Engineering with M.Tech. in Computer Integrated Manufacturing', 'Mechanical Engineering with M.Tech. in Computer Integrated Manufacturing'),
('Mechanical Engineering with M.Tech. in Computational and Applied Mechanics', 'Mechanical Engineering with M.Tech. in Computational and Applied Mechanics'),
('Civil Engineering with M.Tech. in Transportation Systems Engineering', 'Civil Engineering with M.Tech. in Transportation Systems Engineering'),
('Civil Engineering with M.Tech. in Geotechnical Engineering', 'Civil Engineering with M.Tech. in Geotechnical Engineering'),
('Civil Engineering with M.Tech. in Structural Engineering', 'Civil Engineering with M.Tech. in Structural Engineering'),
('Civil Engineering with M.Tech. in Ocean Engineering', 'Civil Engineering with M.Tech. in Ocean Engineering'),
('Civil Engineering with M.Tech. in Water Resources Engineering', 'Civil Engineering with M.Tech. in Water Resources Engineering'),
('Civil Engineering with M.Tech. in Environmental Engineering and Management', 'Civil Engineering with M.Tech. in Environmental Engineering and Management'),
('Aerospace Engineering with M.Tech. in Aerospace Engineering', 'Aerospace Engineering with M.Tech. in Aerospace Engineering'),
('Aerospace Engineering with M.Tech. in Aerospace Structures', 'Aerospace Engineering with M.Tech. in Aerospace Structures'),
('Aerospace Engineering with M.Tech. in Aerodynamics and Flight Mechanics', 'Aerospace Engineering with M.Tech. in Aerodynamics and Flight Mechanics'),
('Aerospace Engineering with M.Tech. in Propulsion', 'Aerospace Engineering with M.Tech. in Propulsion'),
('Aerospace Engineering with M.Tech. in Systems and Control', 'Aerospace Engineering with M.Tech. in Systems and Control'),
('Aerospace Engineering with M.Tech. in Aerospace Manufacturing', 'Aerospace Engineering with M.Tech. in Aerospace Manufacturing'),
('Aerospace Engineering with M.Tech. in Aerospace Propulsion', 'Aerospace Engineering with M.Tech. in Aerospace Propulsion'),
('Aerospace Engineering with M.Tech. in Aerospace Structures', 'Aerospace Engineering with M.Tech. in Aerospace Structures'),
('Aerospace Engineering with M.Tech. in Systems and Control', 'Aerospace Engineering with M.Tech. in Systems and Control'),
('Materials Science and Engineering with M.Tech. in Ceramics and Composites', 'Materials Science and Engineering with M.Tech. in Ceramics and Composites'),
('Materials Science and Engineering with M.Tech. in Materials Manufacturing', 'Materials Science and Engineering with M.Tech. in Materials Manufacturing'),
('Materials Science and Engineering with M.Tech. in Materials Science', 'Materials Science and Engineering with M.Tech. in Materials Science'),
('Materials Science and Engineering with M.Tech. in Nuclear Materials', 'Materials Science and Engineering with M.Tech. in Nuclear Materials'),
('Materials Science and Engineering with M.Tech. in Metallurgical and Materials Science', 'Materials Science and Engineering with M.Tech. in Metallurgical and Materials Science'),
('Materials Science and Engineering with M.Tech. in Materials Science and Engineering', 'Materials Science and Engineering with M.Tech. in Materials Science and Engineering'),


    ],null=True, blank=True)
    year_of_study = models.CharField(choices=[
        ('1', 'First Year'),
        ('2', 'Second Year'),
        ('3', 'Third Year'),
        ('4', 'Fourth Year'),
        ('5', 'Fifth Year'),
        ('6', 'Sixth Year'),
    ], max_length=255, blank=True, null=True)
    Bld_Grp = models.CharField(max_length=3, choices= [
    ('A+', 'A+'),
    ('A-', 'A-'),
    ('B+', 'B+'),
    ('B-', 'B-'),
    ('AB+', 'AB+'),
    ('AB-', 'AB-'),
    ('O+', 'O+'),
    ('O-', 'O-'),
    ])
    Age = models.PositiveIntegerField()
    Weight_kg = models.DecimalField(max_digits=5, decimal_places=2)

    def __str__(self):
        return self.LDAP_ID

# Model for Medical History
class MedicalHistory(models.Model):
    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    date_of_visit = models.DateField()
    doctors_name = models.CharField(max_length=100)
    prescription_img = models.FileField(upload_to='medical_history/prescription')

# Model for Lab Reports
class LabReport(models.Model):
    medical_history = models.ForeignKey(MedicalHistory, on_delete=models.CASCADE)
    report_name = models.CharField(max_length=100)
    report_pdf = models.FileField(upload_to='medical_history/lab_reports')

# Model for Pharmacy Details
class PharmacyDetails(models.Model):
    medical_history = models.ForeignKey(MedicalHistory, on_delete=models.CASCADE)
    pharmacist = models.CharField(max_length=100)
    date_received = models.DateField()

# Model for Medicine Information
class MedicineInformation(models.Model):
    pharmacy_details = models.ForeignKey(PharmacyDetails, on_delete=models.CASCADE)
    medicine_name = models.CharField(max_length=100)
    quantity = models.PositiveIntegerField()
    price = models.DecimalField(max_digits=10, decimal_places=2)

    def total_cost(self):
        return self.quantity * self.price
    


class Doctor(models.Model):
    doctor_id = models.CharField(max_length=10, unique=True)
    #password = models.CharField(max_length=255) 
    name = models.CharField(max_length=255)
    image = models.ImageField(upload_to='doctors', null=True, blank=True)
    department = models.CharField(max_length=100,blank=True)
    doctor_user = models.ForeignKey(to=User, on_delete=models.CASCADE, null=True, related_name="user")
    def __str__(self):
        return self.doctor_id
    def save() -> None:

        return super().save()

class Availability(models.Model):
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    day = models.CharField(max_length=15, choices=[
        ('Monday', 'Monday'),
        ('Tuesday', 'Tuesday'),
        ('Wednesday', 'Wednesday'),
        ('Thursday', 'Thursday'),
        ('Friday', 'Friday'),
        ('Saturday', 'Saturday'),
        ('Sunday', 'Sunday'),
    ])
    start_time = models.TimeField()
    end_time = models.TimeField()

class LabStaff(models.Model):
    name = models.CharField(max_length=255)
    employee_id = models.CharField(max_length=10, unique=True)
    password = models.CharField(max_length=255)  
    face_image = models.ImageField(upload_to='lab_staff', null=True, blank=True)

class Receptionist(models.Model):
    name = models.CharField(max_length=255)
    employee_id = models.CharField(max_length=20, unique=True)
    password = models.CharField(max_length=255)
    face_image = models.ImageField(upload_to='receptionist')

class Pharmacist(models.Model):
    name = models.CharField(max_length=255)
    employee_id = models.CharField(max_length=20, unique=True)
    password = models.CharField(max_length=255)
    face_image = models.ImageField(upload_to='pharmacist')

class Appointment(models.Model):
    doctor_name = models.CharField(max_length=255)
    booking_date = models.DateField()
    appointment_date = models.DateField()
    doctor_department = models.CharField(max_length=255)


 

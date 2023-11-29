from django.contrib import admin
from .models import *

# Register your models with the admin site

@admin.register(Student)
class StudentAdmin(admin.ModelAdmin):
    list_display = ('Name', 'LDAP_ID', 'Branch', 'Age', 'Email')
    list_filter = ('Branch', 'Bld_Grp', 'Gender')
    search_fields = ('Name', 'LDAP_ID')

@admin.register(MedicalHistory)
class MedicalHistoryAdmin(admin.ModelAdmin):
    list_display = ('student', 'date_of_visit', 'doctors_name')
    list_filter = ('student', 'doctors_name')
    search_fields = ('student__ame', 'doctors_name')

@admin.register(LabReport)
class LabReportAdmin(admin.ModelAdmin):
    list_display = ('medical_history', 'report_name')
    list_filter = ('medical_history',)
    search_fields = ('medical_history__student__name', 'report_name')

@admin.register(PharmacyDetails)
class PharmacyDetailsAdmin(admin.ModelAdmin):
    list_display = ('medical_history', 'pharmacist', 'date_received')
    list_filter = ('medical_history',)
    search_fields = ('medical_history__student__name', 'pharmacist')

@admin.register(MedicineInformation)
class MedicineInformationAdmin(admin.ModelAdmin):
    list_display = ('pharmacy_details', 'medicine_name', 'quantity', 'price', 'total_cost')
    list_filter = ('pharmacy_details',)
    search_fields = ('pharmacy_details__medical_history__student__name', 'medicine_name')

@admin.register(Doctor)
class DoctorAdmin(admin.ModelAdmin):
    list_display = ('name', 'doctor_id')
    search_fields = ('name', 'doctor_id')

@admin.register(Availability)
class AvailabilityAdmin(admin.ModelAdmin):
    list_display = ('doctor', 'day', 'start_time', 'end_time')
    list_filter = ('doctor', 'day')
    search_fields = ('doctor__doctor_id', 'day')

@admin.register(LabStaff)
class LabStaffAdmin(admin.ModelAdmin):
    list_display = ('name', 'employee_id')

@admin.register(Receptionist)
class ReceptionistAdmin(admin.ModelAdmin):
    list_display = ('name', 'employee_id')
    search_fields = ('name', 'employee_id')

@admin.register(Pharmacist)
class PharmacistAdmin(admin.ModelAdmin):
    list_display = ('name', 'employee_id')
    search_fields = ('name', 'employee_id')

@admin.register(Appointment)
class AppointmentAdmin(admin.ModelAdmin):
    list_display = ('doctor_name', 'appointment_date')
    search_fields = ('doctor_name', 'appointment_date')

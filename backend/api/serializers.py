from rest_framework import serializers
from .models import *

class StudentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Student
        fields = '__all__'

class MedicalHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = MedicalHistory
        fields = '__all__'

class LabReportSerializer(serializers.ModelSerializer):
    class Meta:
        model = LabReport
        fields = '__all__'

class PharmacyDetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = PharmacyDetails
        fields = '__all__'

class MedicineInformationSerializer(serializers.ModelSerializer):
    class Meta:
        model = MedicineInformation
        fields = '__all__'

class DoctorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Doctor
        fields = '__all__'

class AvailabilitySerializer(serializers.ModelSerializer):
    class Meta:
        model = Availability
        fields = '__all__'

class LabStaffSerializer(serializers.ModelSerializer):
    class Meta:
        model = LabStaff
        fields = '__all__'

class ReceptionistSerializer(serializers.ModelSerializer):
    class Meta:
        model = Receptionist
        fields = '__all__'

class PharmacistSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pharmacist
        fields = '__all__'


class StudentSerializer:
    def __init__(self, student):
        self.id = student.id
        self.name = student.name
        self.roll_number = student.roll_number
        # Include other fields as needed

class MedicalHistorySerializer:
    def __init__(self, medical_history):
        self.id = medical_history.id
        self.patient_name = medical_history.patient_name
        # Include other fields as needed

class LabReportSerializer:
    def __init__(self, lab_report):
        self.id = lab_report.id
        self.report_date = lab_report.report_date
        # Include other fields as needed

class PharmacyDetailsSerializer:
    def __init__(self, pharmacy_details):
        self.id = pharmacy_details.id
        self.pharmacy_name = pharmacy_details.pharmacy_name
        # Include other fields as needed

class MedicineInformationSerializer:
    def __init__(self, medicine_info):
        self.id = medicine_info.id
        self.medicine_name = medicine_info.medicine_name
     

class DoctorSerializer:
    def __init__(self, doctor):
        self.id = doctor.id
        self.name = doctor.name
        self.specialization = doctor.specialization
        # Include other fields as needed

class AvailabilitySerializer:
    def __init__(self, availability):
        self.id = availability.id
        self.doctor_name = availability.doctor.name
        self.available_date = availability.available_date
        # Include other fields as needed

class LabStaffSerializer:
    def __init__(self, lab_staff):
        self.id = lab_staff.id
        self.name = lab_staff.name
        # Include other fields as needed

class ReceptionistSerializer:
    def __init__(self, receptionist):
        self.id = receptionist.id
        self.name = receptionist.name
        # Include other fields as needed

class PharmacistSerializer:
    def __init__(self, pharmacist):
        self.id = pharmacist.id
        self.name = pharmacist.name
        # Include other fields as needed

class AppointmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Appointment
        fields = '__all__'

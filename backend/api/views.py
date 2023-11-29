# 
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate
from .models import *
from django.contrib.auth.models import User
from .models import  Student
from django.utils.decorators import method_decorator
from django.views import View
from django.contrib.auth import authenticate, login
from rest_framework import viewsets
from .serializers import *

class StudentViewSet(viewsets.ModelViewSet):
    queryset = Student.objects.all()
    serializer_class = StudentSerializer

class MedicalHistoryViewSet(viewsets.ModelViewSet):
    queryset = MedicalHistory.objects.all()
    serializer_class = MedicalHistorySerializer

class LabReportViewSet(viewsets.ModelViewSet):
    queryset = LabReport.objects.all()
    serializer_class = LabReportSerializer

class PharmacyDetailsViewSet(viewsets.ModelViewSet):
    queryset = PharmacyDetails.objects.all()
    serializer_class = PharmacyDetailsSerializer

class MedicineInformationViewSet(viewsets.ModelViewSet):
    queryset = MedicineInformation.objects.all()
    serializer_class = MedicineInformationSerializer

class DoctorViewSet(viewsets.ModelViewSet):
    queryset = Doctor.objects.all()
    serializer_class = DoctorSerializer

class AvailabilityDetailViewSet(viewsets.ModelViewSet):
    queryset = Availability.objects.all()
    serializer_class = AvailabilitySerializer

class LabStaffViewSet(viewsets.ModelViewSet):
    queryset = LabStaff.objects.all()
    serializer_class = LabStaffSerializer

class ReceptionistViewSet(viewsets.ModelViewSet):
    queryset = Receptionist.objects.all()
    serializer_class = ReceptionistSerializer

class PharmacistViewSet(viewsets.ModelViewSet):
    queryset = Pharmacist.objects.all()
    serializer_class = PharmacistSerializer

class AppointmentViewSet(viewsets.ModelViewSet):
    queryset = Appointment.objects.all()
    serializer_class = AppointmentSerializer

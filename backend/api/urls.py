from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import *
from .models import *
from .serializers import *

# Create a router for automatic URL routing
router = DefaultRouter()

router.register(r'student', StudentViewSet)
router.register(r'medical_history', MedicalHistoryViewSet)
router.register(r'lab_report', LabReportViewSet)
router.register(r'pharmacy_detail', PharmacyDetailsViewSet)
router.register(r'medicine_info', MedicineInformationViewSet)
router.register(r'doctor',DoctorViewSet)
router.register(r'doctor_availability', AvailabilityDetailViewSet)
router.register(r'lab_staff', LabStaffViewSet)
router.register(r'reception', ReceptionistViewSet)
router.register(r'pharmacy', PharmacistViewSet)
router.register(r'appointment', AppointmentViewSet)

# Define your app's URL patterns, including custom endpoints
urlpatterns = [
    path('api/', include(router.urls)),

    # Add other custom endpoints if needed
]


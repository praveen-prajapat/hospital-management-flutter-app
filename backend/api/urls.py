# from django.urls import path, include
# from rest_framework.routers import DefaultRouter
# from .views import *
# from django.contrib.auth import views as auth_views


# # Create a router for automatic URL routing
# router = DefaultRouter()

# # Register your viewsets with the router
# router.register(r'student', StudentViewSet)
# router.register(r'medical_history', MedicalHistoryViewSet)
# router.register(r'lab_report', LabReportViewSet)
# router.register(r'pharmacy_detail', PharmacyDetailsViewSet)
# router.register(r'medicine_info', MedicineInformationViewSet)
# router.register(r'doctor',DoctorLoginViewSet, basename='doctorlogin' )
#  # Remove the "basename" here
# router.register(r'doctor_availability', AvailabilityDetailViewSet)
# router.register(r'lab_staff', LabStaffViewSet)
# router.register(r'reception', ReceptionistViewSet)
# router.register(r'pharmacy', PharmacistViewSet)

# # Define your app's URL patterns, including custom endpoints
# urlpatterns = [
#     path('', include(router.urls)),

#     # Add other custom endpoints if needed
# ]

from django.urls import path
from . import views

urlpatterns = [
    path('student/', views.student_list, name='student-list'),
    # path('medical_history/', views.medical_history_list, name='medical-history-list'),
    # path('lab_report/', views.lab_report_list, name='lab-report-list'),
    # path('pharmacy_detail/', views.pharmacy_detail_list, name='pharmacy-detail-list'),
    # path('medicine_info/', views.medicine_info_list, name='medicine-info-list'),
    # path('doctor/', views.DoctorLoginView.as_view(), name='doctor-login'),
    # path('doctor_availability/', views.availability_detail_list, name='availability-detail-list'),
    # path('lab_staff/', views.lab_staff_list, name='lab-staff-list'),
    # path('reception/', views.receptionist_list, name='receptionist-list'),
    # path('pharmacy/', views.pharmacist_list, name='pharmacist-list'),
    
    # Add other custom endpoints and views as needed
]

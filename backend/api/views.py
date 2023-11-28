# 
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate
from .models import  Student, MedicalHistory, LabReport, PharmacyDetails, MedicineInformation, LabStaff, Pharmacist, Receptionist
from django.contrib.auth.models import User
from django.utils.decorators import method_decorator
from django.views import View
from django.contrib.auth import authenticate, login
#@csrf_exempt
def doctor_login(request):
    if request.method == 'POST':
        doctor_id = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=doctor_id, password=password)

        if user is not None:
            try:
                doctor = Doctor.objects.get(doctor_id=doctor_id)
                response_data = {
                    'name': doctor.name,
                    'image': str(doctor.image),
                    'department': doctor.department,
                }
                return JsonResponse(response_data, status=200)
            except Doctor.DoesNotExist:
                return JsonResponse({'message': 'Doctor does not exist'}, status=404)
        else:
            return JsonResponse({'message': 'Login failed'}, status=401)
    else:
        return JsonResponse({'message': 'Invalid request method'}, status=400)

@csrf_exempt
def student_list(request):
    if request.method == 'GET':
        students = Student.objects.all()
        student_data = []
        for student in students:
            student_data.append({
                'id': student.id,
                'name': student.name,
                # Include other fields as needed
            })
        return JsonResponse(student_data, status=200, safe=False)
    else:
        return JsonResponse({'message': 'Invalid request method'}, status=400)

# Similar views for other models (MedicalHistory, LabReport, etc.) using JsonResponse and @csrf_exempt decorator.



#New Method
# @method_decorator(csrf_exempt, name='dispatch')
# class DoctorSignupView(View):
#     def post(self, request):
#         data = request.POST
#         doctor_id = data.get('doctor_id')
#         password = data.get('password')
#         name = data.get('name')
#         department = data.get('department')
#         image = request.FILES.get('image')

#         # Check if the doctor_id is unique
#         if Doctor.objects.filter(doctor_id=doctor_id).exists():
#             return JsonResponse({'message': 'Doctor ID already exists'}, status=400)

#         # Create a new user and doctor profile
#         user = User.objects.create_user(username=doctor_id, password=password)
#         doctor = Doctor(doctor_id=doctor_id, name=name, department=department, image=image, doctor_user=user)
#         doctor.save()

#         return JsonResponse({'message': 'Doctor registered successfully'}, status=201)
    

# @method_decorator(csrf_exempt, name='dispatch')
# class DoctorLoginView(View):
#     def post(self, request):
#         data = request.POST
#         doctor_id = data.get('doctor_id')
#         password = data.get('password')
#         #doctor = Doctor.objects.get(doctor_id=doctor_id)
#        # doc_user = doctor.user

#         # Authenticate the doctor
#         user = authenticate(username=doctor_id, password=password)
#         print(user)
#         if user is not None:
#             login(request, user)
#             doctor = Doctor.objects.get(doctor_id=doctor_id)
#             response_data = {
#                 'name': doctor.name,
#                 'image': str(doctor.image.url) if doctor.image else None,
#                 'department': doctor.department,
#             }
#             return JsonResponse(response_data, status=200)
#         else:
#             return JsonResponse({'message': 'Invalid credentials'}, status=401)


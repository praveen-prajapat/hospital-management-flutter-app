# accounts/views.py
from django.contrib.auth import authenticate, login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_POST
import json

@csrf_exempt
@require_POST
def login_view(request):
    data = json.loads(request.body.decode('utf-8'))
    username = data.get('username')
    password = data.get('password')

    user = authenticate(request, username=username, password=password)

    if user:
        login(request, user)
        response_data = {
            'name': user.first_name,
            'phone_number': user.phone_number,
        }
        return JsonResponse(response_data)
    else:
        return JsonResponse({'error': 'Invalid credentials'}, status=400)

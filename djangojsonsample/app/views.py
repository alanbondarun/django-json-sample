from django.shortcuts import render
from django.http.response import JsonResponse

# Create your views here.
def send_data(request):
    return JsonResponse({"msg": "If you see this message in the app, you are fine"})

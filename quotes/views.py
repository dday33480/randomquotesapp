from django.shortcuts import render
from django.http import HttpResponse

def index(request):
        return HttpResponse("Bonjour, bienvenu sur l'appli de citations connues")

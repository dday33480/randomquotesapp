from django.shortcuts import render
from django.http import HttpResponse

from .models import Quote

def index(request):
        quote_count = Quote.objects.order_by("pub_date").count()
        context = {
                "quote_count": quote_count,
        }
        return render(request, "quotes/index.html", context)


def quotes(request):
        return HttpResponse("Ici vous pourrez générer une citation aléatoire")

def results(request, quote_id):
        response = "%s."
        return HttpResponse(response % quote_id)
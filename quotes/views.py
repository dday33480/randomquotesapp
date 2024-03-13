from django.shortcuts import render
from .models import Quote

import random

def index(request):
        quote_count = Quote.objects.order_by("pub_date").count()
        context = {
                "quote_count": quote_count,
        }
        return render(request, "quotes/index.html", context)


def detail(request):
        quote_count = Quote.objects.order_by("pub_date").count()
        context = {
                "quote_count": quote_count,
        }
        return render(request, "quotes/detail.html", context)


def results(request):
        quote_list = list(Quote.objects.all())
        random_quote = random.choice(quote_list)
        context = {
                "random_quote": random_quote,
        }
        return render(request, "quotes/results.html", context)
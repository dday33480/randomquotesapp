from django.shortcuts import render
from .models import Quote

import random


""" Get count of objects in DB for index page """
def index(request):
        quote_count = Quote.objects.order_by("pub_date").count()
        context = {
                "quote_count": quote_count,
        }
        return render(request, "quotes/index.html", context)


""" Get count of objects in DB for details page """
def detail(request):
        quote_count = Quote.objects.order_by("pub_date").count()
        context = {
                "quote_count": quote_count,
        }
        return render(request, "quotes/detail.html", context)


""" Get all objects from DB and make random choice to dispaly random quote on results page """
def results(request):
        quote_list = list(Quote.objects.all())
        random_quote = random.choice(quote_list)
        author = random_quote.quote_author
        year = random_quote.quote_year
        context = {
                "random_quote": random_quote,
                "author": author,
                "year": year,
        }
        return render(request, "quotes/results.html", context)
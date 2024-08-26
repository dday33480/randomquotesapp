from django.shortcuts import render, get_object_or_404
from .models import Quote, QuoteCategory

import random


# Get count of objects in DB for index page
def index(request):
    quote_count = Quote.objects.order_by("pub_date").count()
    context = {
        "quote_count": quote_count,
    }
    return render(request, "quotes/index.html", context)


# Get count of objects in DB for details page
def detail(request):
    quote_count = Quote.objects.order_by("pub_date").count()
    context = {
        "quote_count": quote_count,
    }
    return render(request, "quotes/detail.html", context)


# Get all objects from DB and make random choice to dispaly random quote on results page
def results(request):

    # Get the chosen category
    quote_category = request.GET.get('category')

    if quote_category:
        category = get_object_or_404(QuoteCategory, category=quote_category)
        quote_list = list(Quote.objects.filter(category=category))
    else:
        quote_list = list(Quote.objects.all())

    # Generate the random quote from the specified category
    if quote_list:
        random_quote = random.choice(quote_list)
        author = random_quote.quote_author
        year = random_quote.quote_year
    else:
        random_quote = None
        author = None
        year = None

    img = [
            "../../static/images/background-images/img-1.jpg",
            "../../static/images/background-images/img-2.jpg",
            "../../static/images/background-images/img-3.jpg",
            "../../static/images/background-images/img-4.jpg",
            "../../static/images/background-images/img-5.jpg",
            "../../static/images/background-images/img-6.jpg",
            ]
    rdm_choice = random.randint(0, 5)
    bg_img = img[rdm_choice]

    context = {
        "random_quote": random_quote,
        "author": author,
        "year": year,
        "background": bg_img,
        "quote_category": quote_category,
    }

    return render(request, "quotes/results.html", context)

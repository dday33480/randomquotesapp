from django.urls import path

from . import views

urlpatterns = [
        path("", views.index, name="index"),
        path("quotes/", views.quotes, name="quotes"),
        path("<int:quote_id>/results/", views.results, name="results"),
]
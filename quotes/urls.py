from django.urls import path

from . import views


app_name = "quotes"
urlpatterns = [
        path("", views.index, name="index"),
        path("detail/", views.detail, name="detail"),
        path("<int:quote_id>/results/", views.results, name="results"),
]
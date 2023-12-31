from django.urls import path, re_path, include
from django.views.generic import TemplateView
from rest_framework import routers
from .API import views as views__api
from . import views

router = routers.DefaultRouter()
# task 1 router
router.register(r"fortune_cookies", views__api.FortuneCookies)
# task 2 router
router.register(r"random_numbers", views__api.RandomNumbers, basename="random_numbers")
# task 3 router
router.register(r"poems", views__api.Poem)

urlpatterns = [
    path("", TemplateView.as_view(template_name="index.html")),
    path(
        "fortune_cookies/", TemplateView.as_view(template_name="fortune_cookies.html")
    ),
    path("random_numbers/", TemplateView.as_view(template_name="random_numbers.html")),
    path("poems/", views.poems, name="poems"),
    path("poemsMoreFilters/", views.poemsMoreFilters, name="poemsMoreFilters"),
    path(
        "api/",
        include(router.urls),
    ),
]

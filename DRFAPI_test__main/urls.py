from django.urls import path, re_path, include
from rest_framework import routers
from .API import views as views__api

router = routers.DefaultRouter()
router.register(r"fortune_cookies", views__api.FortuneCookies)
router.register(r"random_numbers", views__api.RandomNumbers, basename="random_numbers")

urlpatterns = [
    path(
        "api/",
        include(router.urls),
    )
]

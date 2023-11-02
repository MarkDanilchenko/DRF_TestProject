from django.urls import path, re_path, include
from rest_framework import routers
from .API import views as views__api

# router = routers.DefaultRouter()
# router.register("fortune_cookies/", views__api.FortuneCookies)

urlpatterns = [
    # path(
    #     "api/",
    #     include(router.urls),
    # )
]

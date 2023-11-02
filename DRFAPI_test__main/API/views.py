from rest_framework import generics, serializers, viewsets, response
from rest_framework.decorators import action
import random
from .. import models
from . import serializers as serializers__api


class FortuneCookies(viewsets.ModelViewSet):
    queryset = models.FortuneCookies.objects.all()
    serializer_class = serializers__api.FortuneCookiesSerializer

    @action(methods=["get"], detail=False)
    def random(self, request):
        result = models.FortuneCookies.objects.order_by("?").first()
        return response.Response({"result": result.description})


class RandomNumbers(viewsets.ModelViewSet):
    @action(methods=["get"], detail=False)
    def randomInt(self, request):
        result = random.randint(0, 100)
        return response.Response({"result": result})

    @action(methods=["post"], detail=False)
    def randomIntInRange(self, request):
        result = random.randint(int(request.data["min"]), int(request.data["max"]))
        return response.Response({"result": result})

    @action(methods=["get"], detail=False)
    def randomList(self, request):
        result = [random.randint(0, 100) for _ in range(10)]
        return response.Response({"result": result})

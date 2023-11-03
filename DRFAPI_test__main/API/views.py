from rest_framework import generics, serializers, viewsets, response, permissions
from rest_framework.decorators import action
import random
from .. import models
from . import serializers as serializers__api

# task 1
class FortuneCookies(viewsets.ModelViewSet):
    queryset = models.FortuneCookies.objects.all()
    serializer_class = serializers__api.FortuneCookiesSerializer
    permission_classes = [permissions.IsAuthenticated, permissions.IsAdminUser]

    @action(methods=["get"], detail=False)
    def random(self, request):
        result = models.FortuneCookies.objects.order_by("?").first().description
        return response.Response({"result": result})

# task 2
class RandomNumbers(viewsets.ModelViewSet):
    permission_classes = [permissions.IsAuthenticated, permissions.IsAdminUser]
    @action(methods=["get"], detail=False)
    def randomInt(self, request):
        result = random.randint(0, 100)
        return response.Response({"result": result})

    @action(methods=["post"], detail=False)
    def randomIntInRange(self, request):
        result = random.randint(int(request.data["minLimite"]), int(request.data["maxLimite"]))
        return response.Response({"result": result})

    @action(methods=["get"], detail=False)
    def randomList(self, request):
        result = [str(random.randint(0, 100)) for _ in range(10)]
        return response.Response({"result": ', '.join(result)})

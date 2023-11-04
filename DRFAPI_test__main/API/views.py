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
        result = random.randint(
            int(request.data["minLimite"]), int(request.data["maxLimite"])
        )
        return response.Response({"result": result})

    @action(methods=["get"], detail=False)
    def randomList(self, request):
        result = [str(random.randint(0, 100)) for _ in range(10)]
        return response.Response({"result": ", ".join(result)})


# task 3
class Poem(viewsets.ModelViewSet):
    queryset = models.Poem.objects.all()
    serializer_class = serializers__api.PoemSerializer

    @action(methods=["get"], detail=False)
    def randomPoem(self, request):
        result = models.Poem.objects.order_by("?").first()
        result = Poem.serializer_class(result)
        return response.Response({"result": result.data})

    @action(methods=["post"], detail=False)
    def randomPoemByTheme(self, request):
        result = (
            models.Poem.objects.filter(theme__theme=request.data["theme"])
            .order_by("?")
            .first()
        )
        result = Poem.serializer_class(result)
        return response.Response({"result": result.data})

    @action(methods=["post"], detail=False)
    def randomPoemByAuthor(self, request):
        result = (
            models.Poem.objects.filter(author__name=request.data["author"])
            .order_by("?")
            .first()
        )
        result = Poem.serializer_class(result)
        return response.Response({"result": result.data})

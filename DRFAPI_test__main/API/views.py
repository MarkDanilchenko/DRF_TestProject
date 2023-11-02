from rest_framework import generics, serializers, viewsets, response
from rest_framework.decorators import action


from .. import models
from . import serializers as serializers__api


class FortuneCookies(viewsets.ModelViewSet):
    queryset = models.FortuneCookies.objects.all()
    serializer_class = serializers__api.FortuneCookiesSerializer

    @action(methods=["get"], detail=False)
    def random(self, request):
        result = models.FortuneCookies.objects.order_by("?").first()
        return response.Response({"result": result.description})

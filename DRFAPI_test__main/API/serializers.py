from .. import models
from rest_framework import serializers


# task 1 serializer
class FortuneCookiesSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.FortuneCookies
        fields = '__all__'

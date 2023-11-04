from .. import models
from rest_framework import serializers


# task 1 serializer
class FortuneCookiesSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.FortuneCookies
        fields = "__all__"


# task 3 serializer
class PoemSerializer(serializers.ModelSerializer):
    author = serializers.StringRelatedField()
    theme = serializers.StringRelatedField()
    class Meta:
        model = models.Poem
        fields = "__all__"

from django.contrib import admin
from . import models


class FortuneCookiesAdmin(admin.ModelAdmin):
    fieldsets = (("Fortune Cookie", {"fields": ("description",)}),)

    list_display = ("description",)
    search_fields = ("description",)


admin.site.register(models.FortuneCookies)

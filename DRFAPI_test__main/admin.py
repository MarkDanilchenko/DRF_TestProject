from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from . import models


# User model
class CustomUserAdmin(UserAdmin):
    list_display = (
        "username",
        "first_name",
        "last_name",
        "email",
        "phone",
    )
    search_fields = ("username", "email")
    list_filter = ("username", "email")


admin.site.register(models.User, CustomUserAdmin)


# task 1 model
class FortuneCookiesAdmin(admin.ModelAdmin):
    fieldsets = (("Fortune Cookie", {"fields": ("description",)}),)

    list_display = ("description",)
    search_fields = ("description",)


admin.site.register(models.FortuneCookies)


# task 3 models
class AuthorAdmin(admin.ModelAdmin):
    fieldsets = (("Name of the Author", {"fields": ("name",)}),)

    list_display = ("name",)
    list_filter = ("name",)
    search_fields = ("name",)


admin.site.register(models.Author, AuthorAdmin)


class ThemeAdmin(admin.ModelAdmin):
    fieldsets = (("Theme of the Poem", {"fields": ("theme",)}),)

    list_display = ("theme",)
    list_filter = ("theme",)
    search_fields = ("theme",)


admin.site.register(models.Theme, ThemeAdmin)


class PoemAdmin(admin.ModelAdmin):
    fieldsets = (
        ("Title of the Poem", {"fields": ("title",)}),
        ("Text of the Poem", {"fields": ("text",)}),
        ("Author of the Poem", {"fields": ("author",)}),
        ("Theme of the Poem", {"fields": ("theme",)}),
    )

    list_display = ("title", "author", "theme")
    list_filter = ("title", "author", "theme")
    search_fields = ("title", "author", "theme")


admin.site.register(models.Poem, PoemAdmin)

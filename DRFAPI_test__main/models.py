import re
from django.contrib.auth.models import AbstractUser
from django.core.exceptions import ValidationError
from django.db import models


# phone validation for model: User
def validate_phone(value):
    if re.search(r"\d{1}\(\d{3}\)\d{3}-\d{2}-\d{2}", value) is None:
        raise ValidationError(
            "Phone number must contain only 11 digits in format _(___)___-__-__"
        )
    else:
        return f"+{value}"


# userModel
class User(AbstractUser):
    phone = models.CharField(
        max_length=15,
        blank=True,
        null=True,
        unique=True,
        validators=[validate_phone],
        help_text="Phone number must contain only 11 digits in format _(___)___-__-__",
        error_messages={"unique": "A user with that username already exists."},
        verbose_name="Phone number",
    )

    def __str__(self):
        return f"{self.username} ({self.email})"


# task 1 model
class FortuneCookies(models.Model):
    description = models.CharField(
        max_length=350,
        blank=False,
        null=False,
        help_text="Text of the fortune cookie",
        verbose_name="Text of the fortune cookie",
    )

    def __str__(self):
        return f"{self.description[:35]}..."

    class Meta:
        verbose_name_plural = "Fortune Cookies"


# task 3 models
class Author(models.Model):
    name = models.CharField(
        max_length=100,
        blank=False,
        null=False,
        help_text="Name of the Author",
        verbose_name="Name of the Author",
    )

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Authors"
        ordering = ["name"]


class Theme(models.Model):
    themes = [
        ("About Daytime", "About Daytime"),
        ("About Countries and towns", "About Countries and towns"),
        ("About Seasons", "About Seasons"),
        ("About Hollydays", "About Holidays"),
        ("About Nature", "About Nature"),
    ]
    theme = models.CharField(
        max_length=100,
        blank=False,
        null=False,
        help_text="Theme of the Poem",
        verbose_name="Theme of the Poem",
        choices=themes,
    )

    def __str__(self):
        return self.theme

    class Meta:
        verbose_name_plural = "Themes"
        ordering = ["theme"]


class Poem(models.Model):
    title = models.CharField(
        max_length=100,
        blank=False,
        null=False,
        help_text="Title of the Poem",
        verbose_name="Title of the Poem",
    )

    text = models.TextField(
        max_length=5000,
        blank=False,
        null=False,
        help_text="Text of the Poem",
        verbose_name="Text of the Poem",
    )

    author = models.ForeignKey(
        Author,
        on_delete=models.CASCADE,
        help_text="Author of the Poem",
        verbose_name="Author of the Poem",
    )
    theme = models.ForeignKey(
        Theme,
        on_delete=models.CASCADE,
        help_text="Theme of the Poem",
        verbose_name="Theme of the Poem",
    )

    def __str__(self):
        return f'"{self.title}" by {self.author}'

    class Meta:
        verbose_name_plural = "Poems"
        ordering = ["title"]

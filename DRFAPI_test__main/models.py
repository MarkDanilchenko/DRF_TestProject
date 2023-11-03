import re
from django.contrib.auth.models import AbstractUser
from django.core.exceptions import ValidationError
from django.db import models


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
        error_messages={
            "unique": "A user with that username already exists."
        },
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

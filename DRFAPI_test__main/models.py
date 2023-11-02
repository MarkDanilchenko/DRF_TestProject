from django.db import models


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
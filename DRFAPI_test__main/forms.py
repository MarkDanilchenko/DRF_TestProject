from django import forms
from django.contrib.auth.forms import UserCreationForm
from . import models


# form for User registration
class UserForm(UserCreationForm):
    email = forms.EmailField(
        max_length=250,
        required=True,
        help_text="Enter a valid email address",
        label="Email",
    )

    phone = forms.CharField(
        max_length=15,
        required=False,
        help_text="Phone number must contain only 11 digits in format _(___)___-__-__",
        label="Phone",
    )

    class Meta:
        model = models.User
        fields = [
            "username",
            "email",
            "first_name",
            "last_name",
            "password1",
            "password2",
            "phone",
        ]

# form for Poem
class PoemForm(forms.ModelForm):
    title = forms.CharField(
        max_length=100,
        required=True,
        help_text="Title of the Poem",
        label="Title",
    )

    text = forms.CharField(
        max_length=5000,
        required=True,
        help_text="Text of the Poem",
        label="Text",
    )

    author = forms.ModelChoiceField(
        queryset=models.Author.objects.all(),
        required=True,
        help_text="Author of the Poem",
        label="Author",
    )

    theme = forms.ModelChoiceField(
        queryset=models.Theme.objects.all(),
        required=True,
        help_text="Theme of the Poem",
        label="Theme",
    )

    class Meta:
        model = models.Poem
        fields = "__all__"

from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect
from . import forms, models


# registartion
def registration(request):
    if request.method == "POST":
        form = forms.UserForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get("username")
            password = form.cleaned_data.get("password1")
            userLogIn = authenticate(username=username, password=password)
            login(request, userLogIn)
            return redirect("/")
    else:
        form = forms.UserForm()
    return render(request, "registration.html", {"form": form})

# render poems html with themes and authors selected options
def poems(request):
    resultThemes = models.Theme.objects.all()
    resultAuthors = models.Author.objects.all()
    return render(
        request,
        "poems.html",
        {"resultThemes": resultThemes, "resultAuthors": resultAuthors},
    )

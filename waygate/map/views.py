from django.shortcuts import render
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.views import generic, View
from django.db.models import F
from rest_framework import viewsets

from .serializers import BookSerializer, ChapterSerializer, CharacterSerializer, PoVSerializer, PinSerializer
from .models import Book, Chapter, Character, PoV, Pin


class IndexView(View):
    message = "Welcome to the Wheel of Time interactive map"

    def get(self, request):
        return HttpResponse(self.message)


class BookView(viewsets.ModelViewSet):
    serializer_class = BookSerializer
    queryset = Book.objects.all()


class ChapterView(viewsets.ModelViewSet):
    serializer_class = ChapterSerializer
    queryset = Chapter.objects.all()


class CharacterView(viewsets.ModelViewSet):
    serializer_class = CharacterSerializer
    queryset = Character.objects.all()


class PoVView(viewsets.ModelViewSet):
    serializer_class = PoVSerializer
    queryset = PoV.objects.all()


class PinView(viewsets.ModelViewSet):
    serializer_class = PinSerializer
    queryset = Pin.objects.all()
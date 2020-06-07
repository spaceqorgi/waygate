from django.http import HttpResponse
from django.views import View
from rest_framework import viewsets

from .serializers import BookSerializer, ChapterSerializer, CharacterSerializer, NarratorSerializer, PointSerializer
from .models import Book, Chapter, Character, Narrator, Point
from django.shortcuts import redirect


def redirect_view(request):
    response = redirect('/api')
    return response


class BookView(viewsets.ModelViewSet):
    serializer_class = BookSerializer
    queryset = Book.objects.all()


class ChapterView(viewsets.ModelViewSet):
    serializer_class = ChapterSerializer
    queryset = Chapter.objects.all()


class CharacterView(viewsets.ModelViewSet):
    serializer_class = CharacterSerializer
    queryset = Character.objects.all()


class NarratorView(viewsets.ModelViewSet):
    serializer_class = NarratorSerializer
    queryset = Narrator.objects.all()


class PointView(viewsets.ModelViewSet):
    serializer_class = PointSerializer
    queryset = Point.objects.all()

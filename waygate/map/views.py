from django.shortcuts import render
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.views import generic, View
from django.db.models import F

from .models import Book, Chapter


class IndexView(View):
    message = 'Welcome to the Wheel of Time interactive map'

    def get(self, request):
        return HttpResponse(self.message)


class BookView(generic.ListView):
    template_name = 'map/book.html'
    context_object_name = 'book_list'

    def get_queryset(self):
        """Return a list of books"""
        return Book.objects.order_by('book_number')


class BookDetailView(generic.DetailView):
    model = Book
    template_name = 'map/book_detail.html'


class ChapterView(generic.DetailView):
    model = Chapter
    template_name = 'map/chapter.html'

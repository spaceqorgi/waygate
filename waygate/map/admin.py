from django.contrib import admin

from .models import Book, Chapter, Character, Point

admin.site.register(Book)
admin.site.register(Chapter)
admin.site.register(Character)
admin.site.register(Point)

from django.contrib import admin

from .models import Book, Chapter, Character, PointOfView, MapPin

admin.site.register(Book)
admin.site.register(Chapter)
admin.site.register(Character)
admin.site.register(PointOfView)
admin.site.register(MapPin)

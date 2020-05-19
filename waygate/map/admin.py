from django.contrib import admin

from .models import Book, Chapter, Character, PoV, Pin


class BookAdmin(admin.ModelAdmin):
    list_display = ('book_number', 'book_name')

admin.site.register(Book)
admin.site.register(Chapter)
admin.site.register(Character)
admin.site.register(PoV)
admin.site.register(Pin)

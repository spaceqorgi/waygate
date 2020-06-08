from django.contrib import admin

from .models import Book, Chapter, Character, Narrator, Point


class ChapterInline(admin.StackedInline):
    model = Chapter
    extra = 3


class BookAdmin(admin.ModelAdmin):
    list_display = ('book_number', 'book_name')
    inline = [ChapterInline]


class NarratorInline(admin.TabularInline):
    model = Narrator
    extra = 3


class ChapterAdmin(admin.ModelAdmin):
    list_display = ('chapter_number', 'chapter_name', 'period', 'summary')
    fieldsets = [
        (None, {'fields': ['chapter_number', 'chapter_name', 'period', 'summary']}),
    ]
    inlines = [NarratorInline]


class PointInline(admin.TabularInline):
    model = Point
    extra = 3


class NarratorAdmin(admin.ModelAdmin):
    fieldsets = [(None, {'fields': ['chapter', 'character']})]
    inlines = [PointInline]


admin.site.register(Book, BookAdmin)
admin.site.register(Chapter, ChapterAdmin)
admin.site.register(Character)
admin.site.register(Narrator, NarratorAdmin)
admin.site.register(Point)

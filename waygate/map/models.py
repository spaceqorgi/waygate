from django.db import models


class Chapter(models.model):
    book = models.ForeignKey('Book', on_delete=models.CASCADE)
    chapter_number = models.PositiveSmallIntegerField()
    chapter_name = models.CharField(max_length=200)
    period = models.CharField(max_length=200)
    summary = models.TextField()

    def __str__(self):
        return self.chapter_name


class Book(models.model):
    book_number = models.PositiveSmallIntegerField()
    book_name = models.CharField(max_length=200)


class Character(models.model):
    pass


from django.db import models


class Chapter(models.Model):
    book = models.ForeignKey('Book', on_delete=models.CASCADE)
    chapter_number = models.PositiveSmallIntegerField()
    chapter_name = models.CharField(max_length=200)
    period = models.CharField(max_length=200)
    summary = models.TextField()

    def __str__(self):
        return self.chapter_name


class Book(models.Model):
    book_number = models.PositiveSmallIntegerField()
    book_name = models.CharField(max_length=200)

    def __str__(self):
        return self.book_name

class Character(models.Model):
    display_name = models.CharField(max_length=200)
    fullname = models.CharField(max_length=200)
    color = models.CharField(max_length=7) 
    pass

    def __str__(self):
        return self.display_name

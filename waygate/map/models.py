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


class PointOfView(models.Model):
    chapter = models.ForeignKey('Chapter', on_delete=models.CASCADE)
    character = models.ForeignKey('Character', on_delete=models.CASCADE)


class Character(models.Model):
    display_name = models.CharField(max_length=200)
    fullname = models.CharField(max_length=200)
    # TODO: Make this categorized
    color = models.CharField(max_length=7)

    def __str__(self):
        return self.display_name


class MapPin(models.Model):
    chapter_number = models.ForeignKey('Chapter', on_delete=models.CASCADE)
    point_of_view = models.ForeignKey('PointOfView', on_delete=models.CASCADE)
    start_x = models.FloatField()
    start_y = models.FloatField()
    end_x = models.FloatField()
    end_y = models.FloatField()
    # TODO: Make this categorized
    type = models.CharField(max_length=100)

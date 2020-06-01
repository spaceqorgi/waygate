from django.db import models


class Point(models.Model):
    ld = 'ld'
    se = 'se'
    tv = 'tv'
    wg = 'wg'
    bt = 'bt'
    cp = 'cp'
    ev = 'ev'
    TYPE_CHOICES = [
        (ld, 'Travel by land'),
        (se, 'Travel by sea'),
        (tv, 'Travel by Gateway'),
        (wg, 'Travel by Waygate'),
        (bt, 'Battle'),
        (cp, 'Camping'),
        (ev, 'Event')
    ]
    narrator = models.ForeignKey("Narrator",
                                 related_name='points',
                                 on_delete=models.CASCADE)
    x = models.FloatField()
    y = models.FloatField()
    type = models.CharField(max_length=100, choices=TYPE_CHOICES, default=ev)

    def __str__(self):
        return self.narrator.__str__()


class Narrator(models.Model):
    chapter = models.ForeignKey("Chapter",
                                related_name='narrators',
                                on_delete=models.CASCADE)
    character = models.ForeignKey("Character", related_name='narrators', on_delete=models.CASCADE)

    def __str__(self):
        return "{} in Chapter {}: {}".format(self.character.__str__(),
                                             self.chapter.chapter_number,
                                             self.chapter.__str__())


class Chapter(models.Model):
    book = models.ForeignKey("Book",
                             related_name='chapters',
                             on_delete=models.CASCADE)
    chapter_number = models.PositiveSmallIntegerField()
    chapter_name = models.CharField(max_length=200)
    period = models.CharField(max_length=200)
    summary = models.TextField()

    def __str__(self):
        return self.chapter_name


class Book(models.Model):
    book_number = models.PositiveSmallIntegerField(primary_key=True)
    book_name = models.CharField(max_length=200)

    def __str__(self):
        return self.book_name


class Character(models.Model):
    display_name = models.CharField(max_length=200)
    fullname = models.CharField(max_length=200)
    color = models.CharField(max_length=7, default="#FFFFFF")
    use_white_text = models.BooleanField(default=True)

    def __str__(self):
        return self.display_name

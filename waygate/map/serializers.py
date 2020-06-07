#!/usr/bin/env python3

from rest_framework import serializers

from .models import Book, Chapter, Character, Narrator, Point


class PointSerializer(serializers.ModelSerializer):
    class Meta:
        model = Point
        fields = (
            "narrator",
            "x",
            "y",
            "type"
        )


class NarratorSerializer(serializers.ModelSerializer):
    points = PointSerializer(many=True, read_only=True)

    class Meta:
        model = Narrator
        fields = ("chapter", "character", "points",)


class ChapterSerializer(serializers.ModelSerializer):
    narrators = NarratorSerializer(many=True, read_only=True)

    class Meta:
        model = Chapter
        fields = ("id",
                  "chapter_number",
                  "chapter_name",
                  "period",
                  "summary",
                  "narrators")


class BookSerializer(serializers.ModelSerializer):
    chapters = ChapterSerializer(many=True, read_only=True)

    class Meta:
        model = Book
        fields = ("book_number", "book_name", "chapters")


class CharacterSerializer(serializers.ModelSerializer):
    narrators = NarratorSerializer(many=True, read_only=True)

    class Meta:
        model = Character
        fields = ("id",
                  "display_name",
                  "fullname",
                  "color",
                  "use_white_text",
                  "narrators")

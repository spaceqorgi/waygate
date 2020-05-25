#!/usr/bin/env python3

from rest_framework import serializers

from .models import Book, Chapter, Character, Narrator, Point


class BookSerializer(serializers.ModelSerializer):
    class Meta:
        model = Book
        fields = ("book_number", "book_name")


class PointSerializer(serializers.ModelSerializer):
    class Meta:
        model = Point
        fields = (
            "narrator",
            "x",
            "y",
            "type"
        )


class CharacterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Character
        fields = ("display_name", "fullname", "color")


class NarratorSerializer(serializers.ModelSerializer):
    points = PointSerializer(many=True, read_only=True)

    class Meta:
        model = Narrator
        fields = ("chapter", "character", "points",)


class ChapterSerializer(serializers.ModelSerializer):
    narrators = NarratorSerializer(many=True, read_only=True)

    class Meta:
        model = Chapter
        fields = ("chapter_number", "chapter_name", "period", "summary", "narrators",)

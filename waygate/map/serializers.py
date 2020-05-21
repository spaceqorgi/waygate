#!/usr/bin/env python3

from rest_framework import serializers

from .models import Book, Chapter, Character, Narrator, Point


class BookSerializer(serializers.ModelSerializer):
    class Meta:
        model = Book
        fields = ("id", "book_number", "book_name")


class ChapterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Chapter
        fields = ("id", "chapter_number", "chapter_name", "period", "summary")


class CharacterSerializer(serializers.ModelSerializer):
    class Meta:
        model = Character
        fields = ("display_name", "fullname", "color")


class NarratorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Narrator
        fields = ("chapter", "character")


class PointSerializer(serializers.ModelSerializer):
    class Meta:
        model = Point
        fields = (
            "narrator",
            "x",
            "y",
            "type"
        )

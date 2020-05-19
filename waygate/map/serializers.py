#!/usr/bin/env python3

from rest_framework import serializers

from .models import Book, Chapter, Character, PoV, Pin


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


class PoVSerializer(serializers.ModelSerializer):
    class Meta:
        model = PoV
        fields = ("chapter", "character")


class PinSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pin
        fields = (
            "chapter",
            "point_of_view",
            "start_x",
            "start_y",
            "end_x",
            "end_y",
            "type"
        )

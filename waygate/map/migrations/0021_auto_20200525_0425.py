# Generated by Django 3.0.6 on 2020-05-25 04:25

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('map', '0020_character_use_white_text'),
    ]

    operations = [
        migrations.AlterField(
            model_name='narrator',
            name='chapter',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='narrators', to='map.Chapter'),
        ),
        migrations.AlterField(
            model_name='point',
            name='narrator',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='points', to='map.Narrator'),
        ),
    ]

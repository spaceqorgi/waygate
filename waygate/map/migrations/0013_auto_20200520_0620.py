# Generated by Django 3.0.6 on 2020-05-20 06:20

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('map', '0012_auto_20200519_1307'),
    ]

    operations = [
        migrations.RenameField(
            model_name='pin',
            old_name='point_of_view',
            new_name='pov',
        ),
        migrations.RemoveField(
            model_name='pin',
            name='chapter',
        ),
    ]
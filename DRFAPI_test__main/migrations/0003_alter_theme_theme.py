# Generated by Django 4.2.7 on 2023-11-04 21:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('DRFAPI_test__main', '0002_author_theme_poem'),
    ]

    operations = [
        migrations.AlterField(
            model_name='theme',
            name='theme',
            field=models.CharField(choices=[('About daytime', 'Abount daytime'), ('About Countries and towns', 'About Countries and towns'), ('About Seasons', 'About Seasons'), ('About Hollydays', 'About Holidays'), ('About Nature', 'About Nature')], help_text='Theme of the Poem', max_length=100, verbose_name='Theme of the Poem'),
        ),
    ]

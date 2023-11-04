# Generated by Django 4.2.7 on 2023-11-04 13:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('DRFAPI_test__main', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Author',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Name of the Author', max_length=100, verbose_name='Name of the Author')),
            ],
            options={
                'verbose_name_plural': 'Authors',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Theme',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('theme', models.CharField(choices=[('Love', 'Love'), ('Friendship', 'Friendship'), ('About Life', 'About Life'), ('New year', 'New year'), ('Nature', 'Nature')], help_text='Theme of the Poem', max_length=100, verbose_name='Theme of the Poem')),
            ],
            options={
                'verbose_name_plural': 'Themes',
                'ordering': ['theme'],
            },
        ),
        migrations.CreateModel(
            name='Poem',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(help_text='Title of the Poem', max_length=100, verbose_name='Title of the Poem')),
                ('author', models.ForeignKey(help_text='Author of the Poem', on_delete=django.db.models.deletion.CASCADE, to='DRFAPI_test__main.author', verbose_name='Author of the Poem')),
                ('theme', models.ForeignKey(help_text='Theme of the Poem', on_delete=django.db.models.deletion.CASCADE, to='DRFAPI_test__main.theme', verbose_name='Theme of the Poem')),
            ],
            options={
                'verbose_name_plural': 'Poems',
                'ordering': ['title'],
            },
        ),
    ]

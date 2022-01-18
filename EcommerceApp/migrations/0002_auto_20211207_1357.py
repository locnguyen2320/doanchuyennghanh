# Generated by Django 3.2.9 on 2021-12-07 06:57

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('EcommerceApp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='shipped_date',
            field=models.DateTimeField(default=None, null=True),
        ),
        migrations.AddField(
            model_name='productdetail',
            name='sold_quantity',
            field=models.IntegerField(default=0, validators=[django.core.validators.MinValueValidator(0)]),
        ),
        migrations.AlterField(
            model_name='productdetail',
            name='size',
            field=models.CharField(choices=[('S', 'SMALL'), ('XL', 'EXTRA LARGE'), ('M', 'MEDIUM'), ('L', 'LARGE')], default='S', max_length=2),
        ),
    ]

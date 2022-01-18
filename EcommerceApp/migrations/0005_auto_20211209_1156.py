# Generated by Django 3.2.9 on 2021-12-09 04:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('EcommerceApp', '0004_auto_20211209_1148'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='productdetail',
            name='name',
        ),
        migrations.AlterField(
            model_name='productdetail',
            name='size',
            field=models.CharField(choices=[('L', 'LARGE'), ('M', 'MEDIUM'), ('S', 'SMALL'), ('XL', 'EXTRA LARGE')], default='S', max_length=2),
        ),
    ]

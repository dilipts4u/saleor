# Generated by Django 2.2.6 on 2019-10-29 21:46
from django.db import migrations, models

class Migration(migrations.Migration):

    dependencies = [
        ('checkout', '0021_django_price_2'),
    ]

    operations = [

        migrations.AddField(
            model_name="checkoutline",
            name="orderline_note",
            field=models.CharField(blank=True, max_length=255, null=True),
        )
    ]

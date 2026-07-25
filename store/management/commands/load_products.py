from django.core.management.base import BaseCommand
from store.models import Product
import os

class Command(BaseCommand):
    help = 'Load all products into the Product table with correct image formats'

    def handle(self, *args, **kwargs):
        BASE_MEDIA_PATH = os.path.join('media', 'products')

        product_data = {
            'Grocery': ['toor-dal', 'moong-dal', 'chana-dal', 'kala-chana', 'rice', 'besan', 'tea', 'sugar', 'salt', 'oil', 'badam', 'kaju'],
            'Vegetables': ['tomato', 'potato', 'bitroot', 'onion', 'brinjal', 'capsicum'],
            'Fruits': ['apple', 'orange', 'mango', 'pineapple', 'banana', 'avocado', 'strawberry', 'grapes', 'papaya'],
            'Dairy': ['milk', 'cheese', 'butter', 'curd', 'paneer', 'ghee'],
            'Snacks & Beverages': ['chips', 'biscuits', 'chocolate', 'cola', 'juice', 'coffee'],
            'Bakery': ['bread', 'croissant', 'muffin', 'cake', 'bun', 'pastry'],
        }

        count = 0

        for category, products in product_data.items():
            for name in products:
                if Product.objects.filter(name=name).exists():
                    continue

                image_filename = 'products/default.jpg'

                for ext in ['.png', '.jpg']:
                    possible_path = os.path.join(BASE_MEDIA_PATH, f'{name.lower()}{ext}')
                    if os.path.exists(possible_path):
                        image_filename = f'products/{name.lower()}{ext}'
                        break

                Product.objects.create(
                    name=name,
                    price=50.00,
                    image=image_filename
                )
                count += 1

        self.stdout.write(self.style.SUCCESS(f"✅ Successfully added {count} products with images."))

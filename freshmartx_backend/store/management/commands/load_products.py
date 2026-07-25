from django.core.management.base import BaseCommand
from store.models import Product

class Command(BaseCommand):
    help = 'Load all products into the Product table'

    def handle(self, *args, **kwargs):
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
            for product_name in products:
                if not Product.objects.filter(name=product_name).exists():
                    Product.objects.create(
                        name=product_name,
                        price=50.00,  # You can customize the default price
                        image='products/default.jpg'  # Placeholder image path
                    )
                    count += 1
        self.stdout.write(self.style.SUCCESS(f'Successfully added {count} products.'))

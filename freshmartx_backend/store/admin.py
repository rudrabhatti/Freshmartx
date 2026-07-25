from django.contrib import admin
from .models import Product, Cart, CartItem

class CartItemAdmin(admin.ModelAdmin):
    list_display = ('product', 'quantity', 'cart', 'get_price')

    def get_price(self, obj):
        return obj.total_price()
    get_price.short_description = "Price"

admin.site.register(Product)
admin.site.register(Cart)
admin.site.register(CartItem, CartItemAdmin)

from django.contrib import admin
from .models import Product, Order, OrderItem

class CartItemAdmin(admin.ModelAdmin):
    list_display = ('product', 'quantity', 'cart', 'get_price')

    def get_price(self, obj):
        return obj.total_price()
    get_price.short_description = "Price"

admin.site.register(Product)
#admin.site.register(Cart)
#admin.site.register(CartItem, CartItemAdmin)
from django.contrib.auth.models import Group, User

admin.site.unregister(Group)


class OrderItemInline(admin.TabularInline):
    model = OrderItem
    extra = 0
    readonly_fields = ('product', 'quantity', 'price')

class OrderAdmin(admin.ModelAdmin):
    list_display = ('id', 'full_name', 'total', 'payment_method', 'colored_status', 'created_at')
    list_filter = ('status', 'payment_method', 'created_at')
    search_fields = ('full_name', 'email', 'city')
    inlines = [OrderItemInline]

admin.site.register(Order, OrderAdmin)
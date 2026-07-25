from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from .models import Product, Cart, CartItem
# ---------------------------
# PRODUCT DETAIL PAGE
# ---------------------------
def product_detail(request, slug):
    slug = slug.lower()  # normalize to lowercase
    return render(request, f"product/{slug}.html")


# ---------------- Main pages ----------------
def index(request): return render(request, 'index.html')
def categories(request): return render(request, 'categories.html')
def checkout(request): return render(request, 'checkout.html')
def login_view(request): return render(request, 'login.html')
def about_us(request): return render(request, 'about_us.html')
def admin(request): return render(request, 'admin.html')
@login_required
def cart(request):
    cart, created = Cart.objects.get_or_create(user=request.user)
    cart_items = cart.items.all()
    total = cart.total_price()
    return render(request, "cart.html", {
        "cart_items": cart_items,
        "total": total
    })
@login_required
def remove_from_cart(request, item_id):
    item = get_object_or_404(CartItem, id=item_id, cart__user=request.user)
    item.delete()
    return redirect('cart')



# ---------------- Category pages ----------------
def grocery(request): return render(request, 'grocery.html')
def vegetables(request): return render(request, 'vegetables.html')
def fruits(request): return render(request, 'fruits.html')
def dairy(request): return render(request, 'dairy.html')
def bakery(request): return render(request, 'bakery.html')
def snacks_beverages(request): return render(request, 'snacks_beverages.html')

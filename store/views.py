from django.shortcuts import render, get_object_or_404, redirect
from django.contrib import messages
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import login_required
from .models import Product, Cart, CartItem, Order, OrderItem
from django.utils import timezone


# --------------------------- UTILITY ---------------------------

def get_cart(request):
    if request.user.is_authenticated:
        cart, _ = Cart.objects.get_or_create(user=request.user)
    else:
        session_key = request.session.session_key
        if not session_key:
            request.session.create()
            session_key = request.session.session_key
        cart, _ = Cart.objects.get_or_create(session_key=session_key)
    return cart


# --------------------------- PRODUCT DETAIL ---------------------------

def product_detail(request, slug):
    slug = slug.lower()
    return render(request, f"product/{slug}.html")


# --------------------------- MAIN PAGES ---------------------------

def index(request): 
    return render(request, 'index.html')

def categories(request): 
    return render(request, 'categories.html')

def login_view(request): 
    return render(request, 'login.html')

def about_us(request): 
    return render(request, 'about_us.html')

def admin(request): 
    return render(request, 'admin.html')


# --------------------------- CART ---------------------------

def cart(request):
    cart = get_cart(request)
    cart_items = cart.items.all()
    total = cart.total_price()

    return render(request, "cart.html", {
        "cart_items": cart_items,
        "total": total
    })


def add_to_cart(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    cart = get_cart(request)

    cart_item, created = CartItem.objects.get_or_create(cart=cart, product=product)
    if not created:
        cart_item.quantity += 1
        cart_item.save()

    messages.success(request, "Product added to cart!")
    return redirect(request.META.get('HTTP_REFERER', 'index'))


def remove_from_cart(request, item_id):
    cart = get_cart(request)
    item = get_object_or_404(CartItem, id=item_id, cart=cart)
    item.delete()
    return redirect(request.META.get('HTTP_REFERER', 'index'))


def update_cart_item(request, item_id):
    cart = get_cart(request)
    item = get_object_or_404(CartItem, id=item_id, cart=cart)

    if request.method == "POST":
        try:
            quantity = int(request.POST.get("quantity", 1))
            if quantity > 0:
                item.quantity = quantity
                item.save()
            else:
                item.delete()
        except ValueError:
            pass

    return redirect("cart")


# --------------------------- CHECKOUT ---------------------------


def checkout(request):
    cart = get_cart(request)
    cart_items = cart.items.all()
    total = cart.total_price()

    return render(request, 'checkout.html', {
        'cart_items': cart_items,
        'total': total
    })



@csrf_exempt
def place_order(request):
    if request.method == "POST":
        cart = get_cart(request)
        cart_items = cart.items.all()
        total = cart.total_price()

        # Billing details from form
        full_name = request.POST.get('full_name')
        email = request.POST.get('email')
        address = request.POST.get('address')
        city = request.POST.get('city')
        zip_code = request.POST.get('zip_code')
        phone_number = request.POST.get('phone_number')

        # Handle guest user (Anonymous)
        user = request.user if request.user.is_authenticated else None

        # Create the order
        order = Order.objects.create(
            user=user,
            full_name=full_name,
            email=email,
            address=address,
            city=city,
            zip_code=zip_code,
            phone_number=phone_number,
            total=total,
            payment_method="Cash on Delivery",
            created_at=timezone.now()
        )

        # Create order items
        for item in cart_items:
            OrderItem.objects.create(
                order=order,
                product=item.product,
                quantity=item.quantity,
                price=item.product.price
            )

        # Clear cart after placing order
        cart.items.all().delete()

        messages.success(request, "Your order has been placed successfully!")
        return redirect('order_confirmation')

    return redirect('checkout')



def order_confirmation(request):
    return render(request, 'order_confirmation.html')


# --------------------------- CATEGORY PAGES ---------------------------

def grocery(request): return render(request, 'grocery.html')
def vegetables(request): return render(request, 'vegetables.html')
def fruits(request): return render(request, 'fruits.html')
def dairy(request): return render(request, 'dairy.html')
def bakery(request): return render(request, 'bakery.html')
def snacks_beverages(request): return render(request, 'snacks_beverages.html')

from django.urls import path 
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    # ---------------------------
    # Product detail pages
    # ---------------------------
    path("product/<slug:slug>/", views.product_detail, name="product_detail"),
   
    # ---------------------------
    # Main pages
    # ---------------------------
    path("", views.index, name="index"),
    path("categories/", views.categories, name="categories"),
    path("checkout/", views.checkout, name="checkout"),
    path("login/", views.login_view, name="login"),
    path("about-us/", views.about_us, name="about_us"),
    path("admin/", views.admin, name="admin"),

    # ---------------------------
    # Cart related
    # ---------------------------
    path("cart/", views.cart, name="cart"),
    path('cart/update/<int:item_id>/', views.update_cart_item, name='update_cart_item'),
    path('cart/remove/<int:item_id>/', views.remove_from_cart, name='remove_from_cart'),
    
    
    # ---------------------------
    # Checkout / Orders
    # ---------------------------
    path("place-order/", views.place_order, name="place_order"),
    path("order-confirmation/", views.order_confirmation, name="order_confirmation"),

    # ---------------------------
    # Category pages
    # ---------------------------
    path("grocery/", views.grocery, name="grocery"),
    path("vegetables/", views.vegetables, name="vegetables"),
    path("fruits/", views.fruits, name="fruits"),
    path("dairy/", views.dairy, name="dairy"),
    path("bakery/", views.bakery, name="bakery"),
    path("snacks-beverages/", views.snacks_beverages, name="snacks_beverages"),
    path('add-to-cart/<int:product_id>/', views.add_to_cart, name='add_to_cart'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

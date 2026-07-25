from django.urls import path
from . import views

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
    path("cart/", views.cart, name="cart"),
    path('remove-from-cart/<int:item_id>/', views.remove_from_cart, name='remove_from_cart'),


    # ---------------------------
    # Category pages
    # ---------------------------
    path("grocery/", views.grocery, name="grocery"),
    path("vegetables/", views.vegetables, name="vegetables"),
    path("fruits/", views.fruits, name="fruits"),
    path("dairy/", views.dairy, name="dairy"),
    path("bakery/", views.bakery, name="bakery"),
    path("snacks-beverages/", views.snacks_beverages, name="snacks_beverages"),
]

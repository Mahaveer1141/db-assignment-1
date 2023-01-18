# User

- it will have id, username, first_name, last_name, email, phone no., created_at, updated_at
- admin_id will point to admin of user

# User_address

- it will user_id which to point to user.

# Payments

- user_id will point to user intiated it and other details.

# Cart

- user_id will point to user who created cart.
- product_id will point to product.

# Product

- category_id will have id for which category product is
- admin_id will point to admin of product
- offer_id will point to all the offers it is applicable for
- ratings will have rating of product.

# Offers

- details of product, like name, detail and discount percentage.

# Orders

- user_id will point to user whom order is.
- product_id will point to product.
- payment_id will point to payment of order.
- status will have status of order like delieverd, pending, cancelled

# Track Order

- it will have detail of order current status like delieverd, shipped and expected date.

# User

- it will have id, username, first_name, last_name, email, phone no., created_at, updated_at

# Payments

- user_id will point to user intiated it and other details.

# Offers

- details of product, like name, detail and discount percentage.

# Reviews

- product_id will point to product for which review is.
- rating and comment will specify, user experience.

# Bookings

- product_id will point to product for which booking is.
- start date and end date of booking is stored.
- user_id will point to user whom booking is
- offer_id will point to offer_id applied on booking.
- payment_id will point to payment for booking.
- staus of booking will be stored.

# Product

- detail like name other being stored.
- product_detial will point to product detail

# Product Detail

- detail like name, description and duration of product
- place and price of product or adventure.
- bestseller will have boolean, if it best_seller or not.

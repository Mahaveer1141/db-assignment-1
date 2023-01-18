# User

- it will have id, username, first_name, last_name, email, phone no., created_at, updated_at all are not null.

# Payments

- user_id will point to user intiated it and other details in user table.
- status will have current staus of payment and not null.
- amount will be not null.
- provider will have which is provider of payment gateway like razorpay and not null.
- time at which payment is done.
- ref. no of user after completion of payment.

# Offers

- details of product, like name, detail and discount percentage and not null.

# Reviews

- product_id will point to product for which review is in product table.
- rating will be not null.
- comment can be null.

# Bookings

- product_id will point to product for which booking is in product table.
- start date and end date of booking is stored.
- user_id will point to user whom booking is in user table
- offer_id will point to offer_id applied on booking in offer table can be null.
- payment_id will point to payment for booking.
- staus of booking will be stored line pending, failed, success.

# Product

- name and created_at, updated_at will be stored and not null.
- product_detial will point to product detail in product detail table not null.
- offer id will point to all offer applicable, can be null.

# Product Detail

- detail like name, description and start and end of activity will be stored and not null.
- place and price of product or adventure, not null.
- bestseller will have boolean, if it best_seller or not, not null.

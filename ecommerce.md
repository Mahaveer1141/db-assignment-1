# User

- it will have id, username, first_name, last_name, email, phone no., created_at, updated_at all are not null.
- admin_id will point to admin of user in admin table.

# User_address

- it will user_id which to point to user in user table.
- it will store address_line 1 which is not null.
- it will store address_line 2 which can be null.
- city will be not null.
- postal will be not null.
- mobile will be not null.

# Payments

- user_id will point to user intiated it and other details in user table.
- status will have current staus of payment and not null.
- amount will be not null.
- provider will have which is provider of payment gateway like razorpay and not null.
- time at which payment is done.
- ref. no of user after completion of payment.

# Cart

- user_id will point to user who created cart in user table and not null.
- product_id will point to product in product table and not null.
- quantity of current product and not null and by default 1.

# Product

- category_id will have id for which category product is in product category table.
- admin_id will point to admin of product in admin table.
- offer_id will point to all the offers it is applicable for in offer table can be null.
- ratings will have rating of product can be null.
- name, description, price, quantity will be not null.

# Product Category

- name, description and these are not null.

# Offers

- details of product, like name, detail and discount percentage and not null.

# Orders

- user_id will point to user whom order is in user table.
- product_id will point to product in product table.
- payment_id will point to payment of order in payment table.
- status will have status of order like delieverd, pending, cancelled
- quantity, total will be not null.

# Track Order

- it will have detail of order current status like in between shipping and coming to delievery place etc.
- order_id will point to order in order table.
- shipped, delieverd will be boolean and not null.
- expected_date can be null.

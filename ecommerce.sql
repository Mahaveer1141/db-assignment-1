create table admin(
  id bigserial primary key unique, 
  name varchar(255) not null,
  email varchar(255) unique not null,
  password varchar(255) not null,
  phone_number bigint unique not null,
  created_at date not null,
  updated_at date
);

create table users(
  id bigserial primary key unique,
  admin_id  bigint not null references admin(id),
  username varchar(255) not null,
  first_name varchar(255) not null,
  last_name varchar(255) not null,
  email varchar(255) unique not null,
  phone_number bigint unique not null,
  created_at date not null,
  updated_at date
);

create table users_address(
  id bigserial primary key unique,
  user_id bigint not null references users(id),
  address_line_1 varchar(255) not null,
  address_line_2 varchar(255),
  city varchar(255) not null,
  postal_code bigint not null,
  country varchar(255) not null,
  mobile bigint not null,
  created_at date not null,
  updated_at date
);

create table payments(
  id bigserial primary key unique,
  user_id  bigint not null references users(id),
  status varchar(255) not null,
  amount decimal not null,
  provider varchar(255) not null,
  completion_time time not null,
  ref_no varchar(255) not null,
  created_at date not null,
  updated_at date
);

create table offers(
  id bigserial primary key unique,
  name varchar(255) not null,
  detail varchar(255) not null,
  discount_percentage decimal
);

create table product_category(
  id bigserial primary key unique,
  name varchar(255) not null,
  description varchar(255) not null,
  created_at date not null,
  updated_at date
);

create table product(
  id bigserial primary key unique,
  admin_id bigint not null references admin(id),
  category_id bigint references product_category(id),
  name varchar(255) not null,
  description varchar(255) not null,
  quantity bigint not null,
  offer_id bigint references offers(id),
  price decimal not null,
  ratings decimal not null,
  bestseller boolean not null,
  created_at date not null,
  updated_at date
);

create table cart(
  id bigserial primary key unique,
  user_id  bigint not null references users(id),
  product_id  bigint not null references product(id),
  quantity  bigint not null,
  created_at date not null,
  updated_at date
);

create table wishlist(
  id bigserial primary key unique,
  user_id  bigint not null references users(id),
  product_id  bigint not null references product(id),
  quantity  bigint not null,
  created_at date not null,
  updated_at date
);

create table orders(
  id bigserial primary key unique,
  user_id  bigint not null references users(id),
  product_id  bigint not null references product(id),
  payment_id  bigint not null references payments(id),
  quantity  bigint not null,
  total decimal not null,
  status varchar(255) not null,
  created_at date not null,
  updated_at date
);

create table track_order(
  id bigserial primary key unique,
  user_id  bigint not null references users(id),
  order_id  bigint not null references orders(id),
  current_status varchar(255),
  shipped boolean not null,
  delivered boolean not null,
  expected_date date not null,
  created_at date not null,
  updated_at date
);

create unique index admin_id_unique_index on admin(id);

create unique index user_id_unique_index on users(id);
create index user_admin_id_index on users(admin_id);

create unique index users_address_id_unique_index on users_address(id);
create index users_address_user_id_index on users_address(user_id);

create unique index payments_id_unique_index on payments(id);
create index payments_user_id_index on payments(user_id);

create unique index offers_id_unique_index on offers(id);

create unique index product_category_id_unique_index on product_category(id);

create unique index product_id_unique_index on product(id); 
create index product_admin_id_index on product(admin_id); 
create index product_category_id_index on product(category_id); 
create index product_offer_id_index on product(offer_id); 

create unique index cart_id_unique_index on cart(id); 
create index cart_user_id_index on cart(user_id); 
create index cart_product_id_index on cart(product_id); 

create unique index wishlist_id_unique_index on wishlist(id); 
create index wishlist_user_id_index on wishlist(user_id); 
create index wishlist_product_id_index on wishlist(product_id); 

create unique index orders_id_unique_index on orders(id); 
create index orders_user_id_index on orders(user_id); 
create index orders_product_id_index on orders(product_id); 
create index orders_payment_id_index on orders(payment_id); 

create unique index track_order_id_unique_index on track_order(id); 
create index track_order_user_id_index on track_order(user_id); 
create index track_order_order_id_index on track_order(order_id); 

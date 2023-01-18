create table users(
  id bigserial primary key unique,
  username varchar(255) not null,
  first_name varchar(255) not null,
  last_name varchar(255) not null,
  email varchar(255) unique not null,
  phone_number bigint unique not null,
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

create table product_detail(
  id bigserial primary key unique,
  name varchar(255) not null,
  description varchar(255) not null,
  start_date date not null,
  end_date date not null,
  price decimal not null,
  place varchar(255) not null,
  bestseller boolean not null,
  created_at date not null,
  updated_at date
);

create table product(
  id bigserial primary key unique,
  name varchar(255) not null,
  product_detail_id bigint not null references product_detail(id),
  offer_id bigint references offers(id),
  created_at date not null,
  updated_at date
);

create table reviews(
  id bigserial primary key unique,
  product_id bigint not null references product(id),
  rating decimal not null,
  comment varchar(255)
);

create table bookings(
  id bigserial primary key unique,
  product_id bigint not null references product(id),
  user_id  bigint not null references users(id),
  payments_id  bigint not null references payments(id),
  offer_id bigint references offers(id),
  start_date date not null,
  end_date date not null,
  price decimal not null,
  status varchar(255) not null,
  created_at date not null,
  updated_at date
);

create unique index user_id_unique_index on users(id);

create unique index payments_id_unique_index on payments(id);
create index payments_user_id_index on payments(user_id);

create unique index offers_id_unique_index on offers(id);

create unique index product_detail_id_unique_index on product_detail(id);

create unique index product_id_unique_index on product(id);
create index product_product_detail_id_index on product(product_detail_id);
create index product_offer_id_index on product(offer_id);

create unique index reviews_id_unique_index on reviews(id);
create index reviews_product_id_index on reviews(product_id);

create unique index bookings_id_unique_index on bookings(id);
create index bookings_product_id_index on bookings(product_id);
create index bookings_user_id_index on bookings(user_id);
create index bookings_payments_id_index on bookings(payments_id);
create index bookings_offer_id_index on bookings(offer_id);

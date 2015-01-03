set schema ecommerce;
drop table product;

create table product (
  id integer generated always as identity,
  part_number int not null unique,
  color VARCHAR (8),
  brand VARCHAR(10),
  category VARCHAR(14),
  name VARCHAR(50),
  primary key (id)
);

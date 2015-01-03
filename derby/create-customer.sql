set schema ecommerce;
DROP TABLE customer;

CREATE TABLE customer (
  id integer generated always as identity (start with 101),
  first_name varchar(12),
  last_name varchar(12) not null,
  street varchar(30),
  city varchar(20), 
  state char (2),
  zip char(5),
  primary key (id)
);

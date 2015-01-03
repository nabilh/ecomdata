use ecommerce;
DROP TABLE customer;

CREATE TABLE customer (
  id integer(4) primary key auto_increment,
  first_name varchar(12),
  last_name varchar(12) not null,
  street varchar(30),
  city varchar(20), 
  state char (2),
  zip char(5)
) auto_increment = 101;

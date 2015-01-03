set schema ecommerce;
drop table sales_order;

create table sales_order (
  id integer generated always as identity (start with 1001),
  date_created date,
  customer_id integer, 
  constraint customer_id_fk
  foreign key (customer_id) references customer (id),
  primary key (id)
);


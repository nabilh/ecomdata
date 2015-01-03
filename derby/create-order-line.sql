set schema ecommerce;
drop table order_line;

create table order_line (
  id integer generated always as identity,
  order_id integer,
  product_id integer,
  quantity integer,
  constraint order_id_fk
  foreign key (order_id) references sales_order (id),
  constraint product_id_fk
  foreign key (product_id) references product (id),
  primary key (id)
);

 

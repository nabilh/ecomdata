drop table order_line;

create table order_line (
	id integer primary key auto_increment,
	order_id integer (4),
	product_id integer (4),
	quantity integer (2),
	constraint order_id_fk
	foreign key (order_id) references sales_order (id),
	constraint product_id_fk
	foreign key (product_id) references product (id)
);

 

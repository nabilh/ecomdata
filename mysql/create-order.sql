
drop table sales_order;

create table sales_order (
	id integer (4) primary key auto_increment,
	date_created date null,
	customer_id integer (4), 
	constraint customer_id_fk
	foreign key (customer_id) references customer (id)
) auto_increment = 1001;


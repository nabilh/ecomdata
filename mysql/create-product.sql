drop table product;
create table product (
	id integer (4) primary key auto_increment,
	part_number int not null unique,
	color VARCHAR(8),
	brand VARCHAR(10),
	category VARCHAR(14),
	name VARCHAR(50)
);

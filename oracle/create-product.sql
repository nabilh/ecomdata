
drop sequence product_sequence;
drop table product;

create table product (
	id number primary key,
	part_number char (6) not null unique,
	name VARCHAR(35),
	color VARCHAR(8),
	brand VARCHAR(10),
	category VARCHAR(14),
	price number (6,2) 
);

create sequence product_sequence
start with 1
increment by 1;

create or replace trigger product_id_generator
before insert on product
for each row
when (new.id is null)
begin
  select product_sequence.nextval 
  into :new.id 
  from dual;
end;
/

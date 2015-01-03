
drop sequence sales_order_sequence;
drop table sales_order;

create table sales_order (
	id number primary key,
	date_created date null,
	customer_id number, 
	constraint customer_id_fk
	foreign key (customer_id) references customer (id)
);

create sequence sales_order_sequence
start with 1001
increment by 1;

create or replace trigger sales_order_id_generator
before insert on sales_order
for each row
when (new.id is null)
begin
  select sales_order_sequence.nextval 
  into :new.id 
  from dual;
end;
/

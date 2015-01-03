drop sequence order_line_sequence;
drop table order_line;

create table order_line (
	id number primary key,
	order_id number (4),
	product_id number (4),
	quantity number (2),
	constraint order_id_fk
	foreign key (order_id) references sales_order (id),
	constraint product_id_fk
	foreign key (product_id) references product (id)
);

create sequence order_line_sequence
start with 1
increment by 1;

create or replace trigger order_line_id_generator
before insert on order_line
for each row
when (new.id is null)
begin
  select order_line_sequence.nextval 
  into :new.id 
  from dual;
end;
/
 
 

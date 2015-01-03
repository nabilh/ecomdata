drop sequence customer_sequence;
DROP TABLE customer;

CREATE TABLE customer (
  id number primary key,
  first_name varchar2(12),
  last_name varchar2(12) not null,
  street varchar2(30),
  city varchar2(20), 
  state char (2),
  zip char(5)
);

create sequence customer_sequence
start with 101
increment by 1;

create or replace trigger customer_id_generator
before insert on customer
for each row
when (new.id is null)
begin
  select customer_sequence.nextval 
  into :new.id 
  from dual;
end;
/

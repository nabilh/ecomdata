drop sequence mytable_sequence;
DROP TABLE myTable;

CREATE TABLE myTable (
  id number(8) NOT NULL,
  part_number number not NULL unique,
  PRIMARY KEY (id)
);

create sequence mytable_sequence
start with 1
increment by 1;

create or replace trigger mytable_id_generator
before insert on mytable
for each row
when (new.id is null)
begin
  select mytable_sequence.nextval 
  into :new.id 
  from dual;
end;
/

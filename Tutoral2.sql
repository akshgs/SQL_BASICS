
create database  custmor;
use custmors;
create table custmor_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id)
);
insert into custmor_info(first_name,last_name,salary)
values
('john','daninel',50000),
('Akash','gs',60000),
('Abhijay','Police',45000),
('Ankith','Sharma',NULL);
select * from custmor_info where salary is null;
update custmor_info set salary=50000 where id=4;
select * from custmor_info;

alter table custmor_info add email varchar(25);
select * from custmor_info;
update custmor_info set email=case
    WHEN id = 1 THEN 'john@example.com'
    WHEN id = 2 THEN 'aksh@example.com'
    WHEN id = 3 THEN 'abhijai@example.com'
	WHEN id = 4 THEN 'aknit@example.com'    
END;
select * from custmor_info;
alter table custmor_info add dob date;
alter table custmor_info modify dob year;
describe custmor_info;




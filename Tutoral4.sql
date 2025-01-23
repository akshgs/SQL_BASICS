USE custmor;
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);
desc person;
drop table person;

-- forigin key
USE custmor;
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id)
);
desc person;
create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id)
);
desc department;
alter table department 
add foreign key(id) references person(id);
drop table department;
drop table person;

## check constrains

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check(salary<50000)
);
desc person;
insert into person value(1,'Akash','gs',23,40000);
select * from person;
## defalut costraint
drop table person;
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
city_name varchar(25) default 'Banglore'

);

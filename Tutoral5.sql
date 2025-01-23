use custmor;
show tables;
select * from person;
create index index_city_name
on person(city_name);
desc person;

create table student(
id int not null,
first_name varchar(25),
last_name varchar(25),
age int);
desc student;


create index index_age
on student(age);



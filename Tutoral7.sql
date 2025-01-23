use custmor;
create table sd(
student_id int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(student_id)
);
select * from sd;
insert into sd values(1,'Geethika','Giressh',18),
(2,'Naithika','Gireesh',13),
(3,'Krish','Naik',17);


create table school_dep(
student_id int auto_increment,
department_name varchar(25) not null,
foreign key (student_id) references sd(student_id)
);
desc school_dep;
insert into school_dep values (1,'Computer Science'),
(2,'Commerce'),
(3,'Mechanical');

select * from school_dep;
select * from sd;

create view sudent_info as
select first_name,last_name,age from sd inner join school_dep using (student_id);

select * from sudent_info;
drop view sudent_info;



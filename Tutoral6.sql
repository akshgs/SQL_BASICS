use custmor;
create table students(
stundent_id int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(stundent_id)
);
select * from students;
insert into students values(1,'Akash','Gs',23),
(2,'Ram','Thushar',29),
(3,'Sooraj','Ramesh',28);

create table dep(
stundent_id int auto_increment,
dep_name varchar(25) not null,
foreign key (stundent_id) references students(stundent_id)
);
desc dep;
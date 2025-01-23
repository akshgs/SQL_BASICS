use custmor;
select * from sd;
insert into sd values(4,'Ramesh','Singh',27),
(5,'Sooraj','Ramesh',27);
create table school_dep(
student_id int auto_increment,
department_name varchar(25) not null,
foreign key (student_id) references sd(student_id)
);
insert into school_dep values (1,'Computer Science'),
(2,'Commerce'),
(3,'Mechanical');


# inner join 
select sd.first_name,sd.last_name,sd.age,school_dep.department_name
 from sd inner join school_dep
 on sd.student_id=school_dep.student_id;
 
 # left join
 select sd.first_name,sd.last_name,sd.age,school_dep.department_name
 from sd left join school_dep
 on sd.student_id=school_dep.student_id;
 
 #right join
 
 select sd.first_name,sd.last_name,sd.age,school_dep.department_name
 from sd right join school_dep
 on sd.student_id=school_dep.student_id;
 
 # full outer join
 
 select sd.first_name,sd.last_name,sd.age,school_dep.department_name
 from sd left join school_dep
 on sd.student_id=school_dep.student_id
 union
 select sd.first_name,sd.last_name,sd.age,school_dep.department_name
 from sd right join school_dep
 on sd.student_id=school_dep.student_id;
 
 #cross join
 
 select sd.first_name,sd.last_name,sd.age,school_dep.department_name
 from sd cross join school_dep;

# Natural join
select sd.first_name,sd.last_name,sd.age,school_dep.department_name
 from sd natural join school_dep;


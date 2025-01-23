create schema `task1`;
create table `task1`.`sales person`(`salesman_id` int not null,
`Name` varchar(45) not null,
`City` varchar(45) not null,
`Commission` decimal(10,2),
primary key(`salesman id`));

insert into `task1`.`sales person`(`salesman id`,`Name`,`City`,`Commission`)values('5003','Lauson Hen','San Jose','0.12');

create table `task1`.`Custmer`(`Custmer_id` int not null,
`Cust_Name` varchar(45) not null,
`City` varchar(45) not null,
`Grade` int not null,
`salesman_id` int not null,
primary key(`Custmer_id`));

insert into `task1`.`Custmer `(`Custmer_id`,`Cust_Name`,`City`,`Grade`,`salesman_id`)values('3002','Nck Rimando','New York','100','5001');

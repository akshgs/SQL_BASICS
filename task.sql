create schema `task`;
create table `task`.`products`(`product id` int not null,
`product code` char(3) not null,
`name` varchar(30) not null,
`quantity` int not null,
`price` decimal(10,2) not null,
primary key(`product id`));
insert into `task`.`products`(`product id`,`product code`,`name`,`quantity`,`price`)values('1001','PEN','PEN Red','5000','1.23');


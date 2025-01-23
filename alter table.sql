show tables;
select * from neew;
alter table neew add email varchar(35)not null;
UPDATE neew
SET email = 'manju@'
WHERE id = 5;
alter table neew add adress varchar(45)not null;
alter table neew drop adress;
UPDATE neew set email ='akash@'
where email='Alfred Schmidt';
delete from neew 
where custmer like 'sreedev%';
select * from neew where email is null;

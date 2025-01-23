create database test;
show databases;
use test;
show tables;
select * from test.joint,test.joint1;
select test.joint.item,test.joint1.custmer,test.joint.id
from test.joint
inner join test.joint1 on id=rating_id;
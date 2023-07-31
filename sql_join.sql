Select subject,count(subject) As Total_Student from student group by subject;
Select subject,count(subject) As Total_Subject,max(marks) As maximum,min(marks) As minimum,sum(marks) As Total,
avg(marks) as Average from student group by subject order by Average;

Select subject,count(subject) As Total_Subject,max(marks) As maximum,min(marks) As minimum,sum(marks) As Total,
avg(marks) as Average from student group by subject having Total_subject>1;

Select subject,count(subject) As Total_Subject,max(marks) As maximum,min(marks) As minimum,sum(marks) As Total,
avg(marks) as Average from student group by subject having subject='english';

Select subject,count(subject) As Total_Subject,max(marks) As maximum,min(marks) As minimum,sum(marks) As Total,
avg(marks) as Average from student group by subject having maximum<90 and minimum>80;

create table product_1(product_id int primary key,product_desc varchar(20),
 product_finish varchar(15),std_price float);
 Desc product_1;
 
 insert into product_1 values
 (1,'End Table','cherry',175),(2,'Coffee Table','Natural Ash',200),
 (3,'Computer Desk','Natural Ash',375),(4,'Entertainment Center','Natural ample',650),
 (5,'Writer\'s Desk','cherry',325),(6,'8-Drawer Dresser','White Ash',750),
 (7,'Dinning Table','Natural Ash',800),(8,'Computer Desk','Walnut',250);
 
 insert into product_1 values
 (101,'End Table','cherry',175),(102,'Coffee Table','Natural Ash',200),
 (103,'Computer Desk','Natural Ash',375),(104,'Entertainment Center','Natural ample',650);
 
 Select * from product_1;
 
 create table  order_1(order_id int,product_id int,Order_quantity int);
 
 insert into order_1 values
 (1001,1,2),(1001,2,2),(1001,4,1),(1001,4,1),(1001,3,5),(1002,3,3),(1003,6,2),(1004,8,2),(1004,4,4),
 (1005,4,1),(1006,5,2),(1006,7,2),(1006,1,3),(1007,2,2),(1007,3,3),(1008,8,3),(1008,4,2),(1009,7,3),(1009,8,10);
 
 insert into order_1 values
(10015,17,2),
(10016,18,1),
(10017,20,3),
(10018,22,4),
(10019,23,3);
 
 Select * from order_1;
 
 -- cross join--
 Select * from product_1,order_1;
 
 -- equi join --
 
 Select * from product_1,order_1 where product_1.product_id=order_1.product_id;
 
 Select p.product_id,product_desc,product_finish,std_price,order_id,order_quantity
 from product_1 p,order_1 o where p.product_id=o.product_id;
 
 -- ansi sql--
Select p.product_id,product_desc,product_finish,std_price,order_id,order_quantity
 from product_1 p inner JOIN  order_1 o ON p.product_id=o.product_id;
 
 -- left join --
 Select p.product_id,product_desc,product_finish,std_price,order_id,order_quantity
 from product_1 p left JOIN  order_1 o ON p.product_id=o.product_id;
 
 -- right join --
 Select p.product_id,product_desc,product_finish,std_price,order_id,order_quantity
 from product_1 p right JOIN  order_1 o ON p.product_id=o.product_id;
 
 create table employee_1(id int primary key,name varchar(20),manager_id int);
 
 insert into employee_1 values
 (1001,'Naveen kumar',1003),
 (1002,'Pooja khurana',1001),
 (1003,'Chavan khatana',1004),
 (1004,'amit kumar',1002);
 
 Select * from employee_1;
 delete from employee_1;
 
 Select e1.name, "is manager of",e2.name from employee_1 e1,employee_1 e2 where e1.id=e2.manager_id;
 
update  employee_1 set manager_id=1004 where name='Pooja khurana';
update  employee_1 set manager_id=1004 where name='amit kumar';

update  employee_1 set manager_id=1002 where name='Chavan khatana';

--- highest mark subquery --
Select * from student where marks=(select max(marks) from student);
Select * from student where marks=(select min(marks) from student);

select * from product_1 where product_id in (select distinct product_id from order_1);

Select * from product_1 where exists (Select distinct product_id from order_1 where std_price between 200 and 500);
Select * from product_1 where not exists (Select distinct product_id from order_1 where std_price between 200 and 500);
 
Select * from product_1 where std_price > Any (Select std_price from product_1 where std_price between 300 and 500);

Select * from product_1 where std_price > All (Select std_price from product_1 where std_price between 300 and 500);

Select * from product_1 p1 where std_price < Any (Select std_price from product_1 p2 
where p1.product_id != p2.product_id);
 
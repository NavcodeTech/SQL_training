CREATE TABLE CUSTOMER_DATA(ID INT PRIMARY KEY,NAME VARCHAR(20) NOT NULL UNIQUE,LOCATION VARCHAR(30) DEFAULT 'Noida',SALARY
FLOAT(8,2),CHECK (SALARY>0));
DESC CUSTOMER;
INSERT INTO CUSTOMER (ID,NAME,LOCATION,SALARY) VALUES(11002,'naveen','PATNA',120000);
Select * from Customer;
delete from customer where name='PATNA';


-- relationship between table---

Create table  product(id int primary key,name varchar(20),cost float);
create table product_order(order_id INT,location varchar(30),delivary date,prdid int,Primary key(order_id),foreign key(prdid)
references product(id));

insert into product values(1101,'Mobile',23450);
insert into product_order values(11001,'delhi',current_date(),1101);
select * from product_order;
Select * from product;

delete from product_order;
delete from product;

select * from product,product_order where id=prdid;


insert into product values(1102,'Speaker',3450);
insert into product values(1103,'TV',33450);
insert into product_order values(11004,'delhi',current_date(),1101);
insert into product_order values(11002,'Gurgaon',current_date(),1102);
insert into product_order values(11003,'Noida',current_date(),1103);

create table book(isbn int primary key auto_increment,bname varchar(20),cost float,author varchar(20));
insert into book (bname,cost,author) values
('java beginner',1000,'y kanetkar'),
('python beginner',1100,'james stalin'),
('Sql beginner',600,'Codecamp Gosling');
Select * from book;
delete from book where bname='python beginner';

Create table customer_1(customer_id int not null,
customer_name varchar(30) not null,
customer_address varchar(30) not null,
city varchar(30)  not null,
state varchar(30) not null,
postal_code varchar(30) not null,
primary key(customer_id));

desc customer_1;

alter table customer_1 change customer_id customer_id int(11) not null auto_increment;

create table cust_1(id int ,cname varchar(20),salary float);
desc cust_1;
alter table cust_1 add primary key(id);
alter table cust_1 drop primary key;
alter table cust_1 modify cname varchar(20) unique;

create table payment(payid int Primary Key,amount float,pay_date date,prdid int);
desc payment;

alter table payment add foreign key(prdid) references product(id);


































































































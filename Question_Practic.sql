 Create table user(User_id int primary key,name varchar(20),
 address varchar(30),Phoneno varchar(20),email varchar(30));
 
 Insert into user values
 (1001,'Adam','Chhenai','8988998991','ada@gmail.com'),
 (1002,'Eve','Mangalore','8988998992','eva@yahoo.com'),
 (1003,'Adam','Mumbai','8988998981','jo@gmail.com'),
 (1004,'John','Hyderabad','8988998990','Peter@yahoo.com');
 
 Select * from user;
 
 create table booking(BD_ID INT PRIMARY KEY, ACCNO VARCHAR(20),NAME VARCHAR(20),User_id int);
 
 insert into booking values
 (1,'12312324','HDFC',1001),
 (2,'23444434','SBI',1001),
 (3,'54556444','IOB',1002),
 (4,'45434234','BOI',1003);
 
 Select * from booking;
select * from user; 
 Select  distinct(u.name),u.address as city from user u Inner  JOIN  booking b ON u.User_id=b.User_id
 where b.Name!='HDFC' order by u.name;
 
 Select  u.name,u.user_id,u.address as city,b.name from user u Inner  JOIN  booking b ON u.User_id=b.User_id
 where b.name!='HDFC' order by u.name;
 
 
 


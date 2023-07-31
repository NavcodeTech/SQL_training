use coforge;
show tables;

create table student (id int primary key,name varchar(20),subject varchar(20));
show tables;
desc student;
Insert into student values(102,'Naveen','Math');
select * from student;

insert into student (id,name) values(101,'Nav');
Select id from student;
Select * from student where id=101;
delete from student where id=101;


Select current_date();
select user();

alter table student Add marks float(5,2);
insert into student values(104,'shyam','english',65.6);
insert into student values(105,'ram','english',61.6);

insert into student values(106,'deepu','ADC',70.5),(107,'Nitin','ACCOUNTS',55.4),(108,'ujjwal','Flat',72.3),
(109,'Naveen','Java',80.6);
Select * from student;
Update  student set subject ='Physics' where id ='103';
Update  student set marks =84.5 where id ='102' or id='101';

select * from student  where marks>=70 and marks<=90;

Alter table student modify name varchar(30);
Alter table student add dob date;

insert into student values(110,'Parthmesh','hindi',77.67,'2001-06-30');
insert into student values(111,'Parth','english',72.67,current_date());

select *  from student order by name ;
select * from student where name like 'N%'; 
select * from student where name like '%m' or name like '%h'; 
Select * from student where name like 'N_____';
Select * from student where subject like '%a%';



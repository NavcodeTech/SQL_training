select * from student;
select * from student  limit 4;
select * from student  limit 3,5;
Select * from student where id in(101,102,103);
Select * from student where subject = 'english' or subject='physics'; 
select * from student where subject in ('english','java','physics');
select * from student where subject not in ('english','java','physics');
Select * from student where dob is null;

Select count(*) from student;
Select count(distinct subject) from student;
Select * from student where marks in (Select max(marks) from student);
Select * from student where marks in (Select min(marks) from student); 
Select max(marks) as maximum_marks,min(marks) as minimum_marks,
sum(marks) as total_marks,avg(marks) as average from student;
use coforge;





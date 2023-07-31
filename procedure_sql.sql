delimiter //
create procedure user_data()
begin 
select * from user;
end;
//
call user_data();

delimiter //
create procedure update_marks()
begin 
update student set marks=marks+0.05;
end;
//
call update_marks();

delimiter //
create procedure search_student(id1 int)
begin 
select * from student where id=id1;
end;
//
call search_student(110);




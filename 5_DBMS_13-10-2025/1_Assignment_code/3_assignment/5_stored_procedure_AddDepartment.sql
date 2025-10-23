-- Create a procedure to insert a new department (IN parameters).

delimiter //
create procedure addDept(
	in d_name varchar(30),
    in loc varchar(30))
begin
	insert into departments(dept_name, location)
    values (d_name, loc);
end //
delimiter ;

call addDept('Physics', 'Hyderabad');

select * from departments;
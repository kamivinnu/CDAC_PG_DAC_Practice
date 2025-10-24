-- Create a procedure to get an employee’s name by ID (IN and OUT parameter).

delimiter //
create procedure getEmpName(in e_id int, out e_name varchar(50))
begin
	select name into e_name from employees where emp_id = e_id;
end //
delimiter ;

call getEmpName(5, @emp_name);

select @emp_name as EmployeeName;

select * from employees;
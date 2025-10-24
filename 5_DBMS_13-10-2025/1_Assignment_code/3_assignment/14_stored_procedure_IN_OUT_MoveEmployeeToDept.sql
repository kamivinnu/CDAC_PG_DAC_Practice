-- Create a procedure to move an employee to another department and return new department name (INOUT parameter).

delimiter //
create procedure MoveEmployeeToDept(in e_id int, inout new_dept varchar(30))
begin
	update employees
    set department = new_dept
    where emp_id = e_id;
end //
delimiter ;

set @dept = 'dac';
call MoveEmployeeToDept(6, @dept);

select * from employees;
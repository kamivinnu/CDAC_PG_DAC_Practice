-- Create a procedure to delete an employee by name (IN parameter).

delimiter //
create procedure del_emp_name(in n varchar(50))
begin
	delete from employees
    where name = n;
end //
delimiter ;

call del_emp_name('vinod');

select * from employees;
-- Create a procedure to reset all employee salaries to 50000.

delimiter //
create procedure ResetAllSalaries()
begin
	update employees
    set salary = 50000
    where empid > 0;
end //
delimiter ;

call ResetAllSalaries();

select * from employees;
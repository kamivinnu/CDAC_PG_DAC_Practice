-- Create a procedure to delete all employees in the HR department.

delimiter //
create procedure delete_hr_emp()
begin
	delete from employees
    where department = 'hr';
end //
delimiter ;

call delete_hr_emp();

select * from employees;
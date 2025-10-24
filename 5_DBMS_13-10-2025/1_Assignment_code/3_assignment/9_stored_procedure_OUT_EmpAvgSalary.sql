-- Create a procedure to get average salary (OUT parameter).

delimiter //
create procedure empAvgSal(out avgSal decimal(10, 2))
begin
	select avg(salary) into avgSal from employees;
end //
delimiter ;

call empAvgSal(@AvgSal);

select @AvgSal as EmployeesAverageSalary;
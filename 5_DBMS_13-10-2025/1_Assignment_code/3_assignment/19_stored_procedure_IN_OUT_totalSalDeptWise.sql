-- Create a procedure to find the total salary paid in a department (IN and OUT parameter).

delimiter //
create procedure totalSalDeptWise(in d_name varchar(30), out t_sal decimal(10, 2))
begin
	select sum(salary) into t_sal from employees where department = d_name;
end //
delimiter ;

call totalSalDeptWise('IT', @totalSal);

select @totalSal as TotalSalary;

select * from employees;
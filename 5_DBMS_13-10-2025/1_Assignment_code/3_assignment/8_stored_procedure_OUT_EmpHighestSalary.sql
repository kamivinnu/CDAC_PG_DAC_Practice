-- Create a procedure to get the highest salary (OUT parameter).

delimiter //
create procedure empHighestSalary(out h_sal decimal(10, 2))
begin
	select max(salary) into h_sal from employees;
end //
delimiter ;

call empHighestSalary(@highestSal);

select @highestSal as HighestSalary;
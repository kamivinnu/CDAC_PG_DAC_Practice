-- Create a procedure to find the minimum salary and return it (OUT parameter).

delimiter //
create procedure MinSal(out sal decimal(10, 2))
begin
	select min(salary) into sal
    from employees;
end //
delimiter ;

call MinSal(@minSalary);

select @minSalary as MinimumSalary;

select * from employees;
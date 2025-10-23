-- Create a procedure to increase all employee salaries by 5%.

delimiter //
create procedure inc_sal()
begin
	update employees 
    set salary = salary + salary * (5/100);
end //
delimiter ;

call inc_sal();

select * from employees;
-- Create a procedure to add a bonus to an employee and return updated salary (INOUT parameter).

delimiter //
create procedure addBonusToEmployee(in e_id int, inout emp_sal decimal(10, 2), in bonus decimal(10, 2))
begin
	-- step 1: fetch current salary
	select salary into emp_sal 
    from employees where emp_id = e_id;
    
    -- step 2: add bonus
    
    set emp_sal = emp_sal + bonus;
    
    -- step 3: update employee salary
    update employees
    set salary = emp_sal
    where emp_id = e_id;
end //
delimiter ;

set @salary = 0;

call addBonusToEmployee(5, @salary, 25000);

select @salary as "Updated Salary";

select * from employees;
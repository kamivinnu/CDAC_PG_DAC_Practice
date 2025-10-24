-- Create a procedure to increase salary of an employee by a given percentage (INparameters).

delimiter //
create procedure incEmpSal(in e_id int, in increase int)
begin
	update employees
    set salary = salary + (salary * (increase/100)) where emp_id = e_id;
end //
delimiter ;

call incEmpSal(5, 10);

select * from employees;
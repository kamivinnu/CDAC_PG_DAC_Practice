-- Create a procedure to insert a new employee (IN parameters).

delimiter //
create procedure add_emp(in emp_name varchar(50), in emp_sal decimal(10,2), in emp_dept varchar(30))
begin
	insert into employees (name, salary, department)
    values (emp_name, emp_sal, emp_dept);
end //
delimiter ;

call add_emp('sony', 43000, 'IT');

select * from employees;

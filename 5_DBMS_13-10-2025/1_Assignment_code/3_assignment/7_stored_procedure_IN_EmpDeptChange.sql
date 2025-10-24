-- Create a procedure to change an employee’s department (IN parameters).

delimiter //
create procedure empDeptChange(
	in e_id int,
    in dept varchar(30))
begin
	update employees
    set department = dept
    where emp_id = e_id;
end //
delimiter ;

call empDeptChange(3, 'CSE');

select * from employees;
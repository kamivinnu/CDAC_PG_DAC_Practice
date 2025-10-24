-- Create a procedure to delete a department by name (IN parameter).

delimiter //
create procedure delDeptByName(in d_name varchar(30))
begin
	delete from departments where dept_name = d_name;
end //
delimiter ;

call delDeptByName('Physics');

select * from departments;
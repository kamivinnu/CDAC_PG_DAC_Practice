-- Create a procedure to show employees earning above a given salary (IN parameter).

delimiter //
create procedure empAboveSal(in sal decimal(10, 2))
begin
	select * from employees where salary > sal;
end //
delimiter ;

call empAboveSal(55000);
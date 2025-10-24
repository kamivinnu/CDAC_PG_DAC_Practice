-- Create a procedure to show all departments in a specific location (IN parameter).

delimiter //
create procedure showDeptInLoc(in loc varchar(30))
begin
	select * from departments where location = loc;
end //
delimiter ;

call showDeptInLoc('Pune');
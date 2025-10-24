-- Create a procedure to change department location and return updated location (INOUT parameter).

delimiter //
create procedure changeDeptLoc(in d_id int, inout d_loc varchar(30))
begin
	update departments
    set location = d_loc
    where dept_id = d_id;
end //
delimiter ;

set @loc = 'Pune';
call changeDeptLoc(4, @loc);

select @loc as updated_location;

select * from departments;
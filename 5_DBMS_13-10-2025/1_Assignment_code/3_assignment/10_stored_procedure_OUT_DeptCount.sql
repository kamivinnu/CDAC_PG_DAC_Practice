 -- Create a procedure to get department count (OUT parameter).
 
 delimiter //
 create procedure deptCount(out d_count int)
 begin
	select count(*) into d_count from departments;
 end //
 delimiter ;
 
 call deptCount(@dept_count);
 
 select @dept_count as DepartmentCount;
 
 select * from  departments;
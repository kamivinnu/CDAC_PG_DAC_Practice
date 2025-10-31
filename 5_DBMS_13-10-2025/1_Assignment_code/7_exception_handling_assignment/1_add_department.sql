drop procedure if exists add_department;

delimiter //
create procedure add_department(in dname varchar(50))
begin
	declare exit handler for 1062
    begin
		select 'Department already exists' as message;
    end;
    
	insert into departments(dept_name) values (dname);
    select 'Department added successfully' as message;
end //
delimiter ;

call add_department('IT');
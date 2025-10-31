drop procedure if exists bulk_insert_employees;

delimiter //
create procedure bulk_insert_employees()
begin
	declare i int default 1;
    declare continue handler for 1062
    begin
		select concat('Duplicate record found at ', i) as warning;
    end;
    
    while i <= 5 do
		insert into employees(emp_name, salary, dept_id)
        values (concat('Emp', i), 3000*i, 1);
        set i = i + 1;
	end while;
end //
delimiter ;

call bulk_insert_employees();


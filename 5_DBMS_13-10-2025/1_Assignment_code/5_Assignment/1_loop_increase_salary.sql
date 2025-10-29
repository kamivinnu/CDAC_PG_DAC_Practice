drop procedure if exists loop_increase_salary;

delimiter //
create procedure loop_increase_salary() 
begin
    declare i int default 1;
    declare total int;

    select count(*) into total from employees;

    loop_label: loop
        if i > 3 then
            leave loop_label;
        end if;

        update employees set salary = salary * 1.10 where id = i;
        set i = i + 1;
    end loop loop_label;
end //
delimiter ;

call loop_increase_salary();

select * from employees;


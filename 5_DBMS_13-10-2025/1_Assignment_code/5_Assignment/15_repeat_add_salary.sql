DROP PROCEDURE IF EXISTS repeat_add_salary;
DELIMITER //
CREATE PROCEDURE repeat_add_salary()
BEGIN
   DECLARE sal DECIMAL(10,2);
   DECLARE emp_name VARCHAR(50);
   SELECT salary, name INTO sal, emp_name FROM employees WHERE id = 2;
   REPEAT
       SET sal = sal + 5000;
       SELECT CONCAT('New salary of ', emp_name, ' is ', sal) AS Info;
   UNTIL sal > 40000
   END REPEAT;
END //
DELIMITER ;
CALL repeat_add_salary();


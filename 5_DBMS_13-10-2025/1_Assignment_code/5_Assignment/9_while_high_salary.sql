DROP PROCEDURE IF EXISTS while_high_salary;
DELIMITER //
CREATE PROCEDURE while_high_salary()
BEGIN
   DECLARE i INT DEFAULT 1;
   DECLARE total INT;
   DECLARE sal DECIMAL(10,2);
   DECLARE emp_name VARCHAR(50);
   SELECT COUNT(*) INTO total FROM employees;

   WHILE i <= total DO
       SELECT salary, name INTO sal, emp_name FROM employees WHERE id = i LIMIT 1;
       IF sal > 30000 THEN
           SELECT emp_name AS Name, sal AS Salary;
       END IF;
       SET i = i + 1;
   END WHILE;
END //
DELIMITER ;
CALL while_high_salary();

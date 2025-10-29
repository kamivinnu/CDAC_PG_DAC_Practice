DROP PROCEDURE IF EXISTS while_increase_until;
DELIMITER //
CREATE PROCEDURE while_increase_until()
BEGIN
	DECLARE sal DECIMAL(10,2);
	DECLARE emp_name VARCHAR(50);
	SELECT salary, name INTO sal, emp_name FROM employees WHERE id = 1;
	WHILE sal < 50000 DO
	   SET sal = sal + 5000;
	   SELECT CONCAT(emp_name, ' salary increased to ', sal) AS Progress;
	END WHILE;
END //
DELIMITER ;
CALL while_increase_until();

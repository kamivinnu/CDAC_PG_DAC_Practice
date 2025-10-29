DROP PROCEDURE IF EXISTS repeat_raise_salary;
DELIMITER //
CREATE PROCEDURE repeat_raise_salary()
BEGIN
  DECLARE sal DECIMAL(10,2);
  DECLARE emp_name VARCHAR(50);
  SELECT salary, name INTO sal, emp_name FROM employees WHERE id = 4;
  REPEAT
      SET sal = sal + 500;
      SELECT CONCAT('Salary of ', emp_name, ' is now ', sal) AS UpdateInfo;
  UNTIL sal >= 45000
  END REPEAT;
END //
DELIMITER ;
CALL repeat_raise_salary();

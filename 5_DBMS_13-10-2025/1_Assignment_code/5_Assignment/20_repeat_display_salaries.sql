DROP PROCEDURE IF EXISTS repeat_display_salaries;
DELIMITER //
CREATE PROCEDURE repeat_display_salaries()
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE total INT;
  DECLARE emp_name VARCHAR(50);
  DECLARE sal DECIMAL(10,2);
  SELECT COUNT(*) INTO total FROM employees;

  REPEAT
      SELECT name, salary INTO emp_name, sal FROM employees WHERE id = i;
      SELECT CONCAT(emp_name, ' earns ₹', sal) AS Employee_Salary;
      SET i = i + 1;
  UNTIL i > total
  END REPEAT;
END //
DELIMITER ;
CALL repeat_display_salaries();

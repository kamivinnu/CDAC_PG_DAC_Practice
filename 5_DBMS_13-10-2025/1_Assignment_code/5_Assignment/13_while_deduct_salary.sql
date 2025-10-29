DROP PROCEDURE IF EXISTS while_deduct_salary;
DELIMITER //
CREATE PROCEDURE while_deduct_salary()
BEGIN
  DECLARE sal DECIMAL(10,2);
  DECLARE emp_name VARCHAR(50);
  SELECT salary, name INTO sal, emp_name FROM employees WHERE id = 3;

  WHILE sal > 25000 DO
      SET sal = sal - 1000;
      SELECT CONCAT(emp_name, ' salary reduced to ', sal) AS Progress;
  END WHILE;
END //
DELIMITER ;
CALL while_deduct_salary();

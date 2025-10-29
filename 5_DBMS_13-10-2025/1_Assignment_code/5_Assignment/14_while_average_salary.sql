DROP PROCEDURE IF EXISTS while_average_salary;
DELIMITER //
CREATE PROCEDURE while_average_salary()
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE total INT;
  DECLARE total_sal DECIMAL(10,2) DEFAULT 0;
  DECLARE sal DECIMAL(10,2);
  SELECT COUNT(*) INTO total FROM employees;

  WHILE i <= total DO
      SELECT salary INTO sal FROM employees WHERE id = i;
      SET total_sal = total_sal + sal;
      SET i = i + 1;
  END WHILE;
  SELECT (total_sal / total) AS Average_Salary;
END //
DELIMITER ;
CALL while_average_salary();

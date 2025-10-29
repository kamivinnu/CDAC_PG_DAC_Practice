DROP PROCEDURE IF EXISTS repeat_insert_until15;
DELIMITER //
CREATE PROCEDURE repeat_insert_until15()
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total FROM employees;
  REPEAT
      INSERT INTO employees(name, department, salary)
      VALUES (CONCAT('TempEmp', total + 1), 'Support', 22000);
      SELECT COUNT(*) INTO total FROM employees;
  UNTIL total >= 15
  END REPEAT;
END //
DELIMITER ;
CALL repeat_insert_until15();
SELECT * FROM employees;

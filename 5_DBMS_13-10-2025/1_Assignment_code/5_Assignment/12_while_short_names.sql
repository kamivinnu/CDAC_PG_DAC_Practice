DROP PROCEDURE IF EXISTS while_short_names;
DELIMITER //
CREATE PROCEDURE while_short_names()
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE total INT;
  DECLARE emp_name VARCHAR(50);
  SELECT COUNT(*) INTO total FROM employees;

  WHILE i <= total DO
      SELECT name INTO emp_name FROM employees WHERE id = i;
      IF CHAR_LENGTH(emp_name) < 6 THEN
          SELECT emp_name AS Short_Name;
      END IF;
      SET i = i + 1;
  END WHILE;
END //
DELIMITER ;
CALL while_short_names();

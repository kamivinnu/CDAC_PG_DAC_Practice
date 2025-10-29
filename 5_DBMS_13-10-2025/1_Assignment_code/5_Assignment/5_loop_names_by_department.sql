DROP PROCEDURE IF EXISTS loop_names_by_department;
DELIMITER //
CREATE PROCEDURE loop_names_by_department()
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE total INT;
  DECLARE dept VARCHAR(30);
  DECLARE emp_name VARCHAR(50);
  SELECT COUNT(*) INTO total FROM employees;

  loop_label: LOOP
      IF i > total THEN
          LEAVE loop_label;
      END IF;
      SELECT department, name INTO dept, emp_name FROM employees WHERE id = i;
      SELECT CONCAT('Department: ', dept, ' - ', emp_name) AS Employee_Info;
      SET i = i + 1;
  END LOOP loop_label;
END //
DELIMITER ;
CALL loop_names_by_department();

DROP PROCEDURE IF EXISTS loop_copy_to_backup;
DELIMITER //
CREATE PROCEDURE loop_copy_to_backup()
BEGIN
  DECLARE i INT DEFAULT 1;
  CREATE TABLE IF NOT EXISTS employee_backup LIKE employees;

  copy_loop: LOOP
      IF i > 2 THEN
          LEAVE copy_loop;
      END IF;
      INSERT INTO employee_backup(name, department, salary)
      SELECT name, department, salary FROM employees WHERE id = i;
      SET i = i + 1;
  END LOOP copy_loop;
END //
DELIMITER ;
CALL loop_copy_to_backup();
SELECT * FROM employee_backup;

DROP PROCEDURE IF EXISTS loop_insert_temps;
DELIMITER //
CREATE PROCEDURE loop_insert_temps()
BEGIN
   DECLARE i INT DEFAULT 1;
   temp_loop: LOOP
       IF i > 3 THEN
           LEAVE temp_loop;
       END IF;
	INSERT INTO employees(name, department, salary)
       VALUES (CONCAT('TempEmp', i), 'Temp', 20000);
       SET i = i + 1;
   END LOOP temp_loop;
END //
DELIMITER ;
CALL loop_insert_temps();
SELECT * FROM employees;

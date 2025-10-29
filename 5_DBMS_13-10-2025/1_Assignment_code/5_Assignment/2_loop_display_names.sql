DROP PROCEDURE IF EXISTS loop_display_names;
DELIMITER //
CREATE PROCEDURE loop_display_names()
BEGIN
   DECLARE i INT DEFAULT 1;
   DECLARE total INT;
   DECLARE emp_name VARCHAR(50);
   SELECT COUNT(*) INTO total FROM employees;

   display_loop: LOOP
       IF i > total THEN
           LEAVE display_loop;
       END IF;
       SELECT name INTO emp_name FROM employees WHERE id = i;
       SELECT emp_name AS Employee_Name;
       SET i = i + 1;
   END LOOP display_loop;
END //
DELIMITER ;
CALL loop_display_names();

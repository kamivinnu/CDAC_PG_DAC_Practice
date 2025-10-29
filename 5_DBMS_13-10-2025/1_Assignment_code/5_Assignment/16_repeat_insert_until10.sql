DROP PROCEDURE IF EXISTS repeat_insert_until10;
DELIMITER //
CREATE PROCEDURE repeat_insert_until10()
BEGIN
   DECLARE total INT;
   SELECT COUNT(*) INTO total FROM employees;
   REPEAT
       INSERT INTO employees(name, department, salary)
       VALUES (CONCAT('ExtraEmp', total + 1), 'Support', 25000);
       SELECT COUNT(*) INTO total FROM employees;
   UNTIL total >= 10
   END REPEAT;
END //
DELIMITER ;
CALL repeat_insert_until10();
SELECT * FROM employees;

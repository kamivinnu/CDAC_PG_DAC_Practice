DELIMITER $$
CREATE TRIGGER after_emp_update_message
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
 IF NEW.salary > OLD.salary THEN
   SELECT CONCAT('Salary increased for ', NEW.emp_name, '!') AS Message;
 END IF;
END$$
DELIMITER ;

-- Example to try
UPDATE employees SET salary = 55000 WHERE emp_id = 2;

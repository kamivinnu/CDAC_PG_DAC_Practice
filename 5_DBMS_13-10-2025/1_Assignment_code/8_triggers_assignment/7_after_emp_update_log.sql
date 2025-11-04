DELIMITER $$
CREATE TRIGGER after_emp_update_log
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
 INSERT INTO audit_log(action, emp_id, old_salary, new_salary)
 VALUES ('UPDATE', NEW.emp_id, OLD.salary, NEW.salary);
END$$
DELIMITER ;

-- Example to try
UPDATE employees SET salary = 48000 WHERE emp_id = 1;
SELECT * FROM audit_log;

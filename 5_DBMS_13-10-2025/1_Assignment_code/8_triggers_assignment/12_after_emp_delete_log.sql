DELIMITER $$
CREATE TRIGGER after_emp_delete_log
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
 INSERT INTO audit_log(action, emp_id, old_salary)
 VALUES ('DELETE', OLD.emp_id, OLD.salary);
END$$
DELIMITER ;

-- Example to try
DELETE FROM employees WHERE emp_id = 4;
SELECT * FROM audit_log;

DELIMITER $$
CREATE TRIGGER before_emp_delete_log
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
 INSERT INTO audit_log(action, emp_id, old_salary)
 VALUES ('DELETE_ATTEMPT', OLD.emp_id, OLD.salary);
END$$
DELIMITER ;

-- Example to try
DELETE FROM employees WHERE emp_id = 2;
SELECT * FROM audit_log;

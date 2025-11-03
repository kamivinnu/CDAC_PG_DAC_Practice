DELIMITER $$
CREATE TRIGGER after_emp_insert_log
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
 INSERT INTO audit_log(action, emp_id, new_salary)
 VALUES ('INSERT', NEW.emp_id, NEW.salary);
END$$
DELIMITER ;

-- Example to try
INSERT INTO employees(emp_name, salary) VALUES ('david', 35000);
SELECT * FROM audit_log;

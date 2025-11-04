DELIMITER $$
CREATE TRIGGER after_emp_delete_copy
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
 INSERT INTO deleted_employees(emp_id, emp_name)
 VALUES (OLD.emp_id, OLD.emp_name);
END$$
DELIMITER ;

-- Example to try
DELETE FROM employees WHERE emp_id = 3;
SELECT * FROM deleted_employees;

DELIMITER $$
CREATE TRIGGER before_emp_delete_ceo
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
 IF OLD.emp_name = 'CEO' THEN
   SIGNAL SQLSTATE '45000'
   SET MESSAGE_TEXT = 'Cannot delete CEO record!';
 END IF;
END$$
DELIMITER ;

-- Example to try
INSERT INTO employees(emp_name, salary) VALUES ('CEO', 90000);
DELETE FROM employees WHERE emp_name = 'CEO'; -- should raise error

DELIMITER $$
CREATE TRIGGER before_emp_update_no_decrease
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
 IF NEW.salary < OLD.salary THEN
   SET NEW.salary = OLD.salary;
 END IF;
END$$
DELIMITER ;

-- Example to try
UPDATE employees SET salary = 10000 WHERE emp_id = 1;
SELECT * FROM employees;

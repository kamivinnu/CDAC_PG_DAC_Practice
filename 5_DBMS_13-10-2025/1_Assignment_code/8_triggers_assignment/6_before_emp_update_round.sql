DELIMITER $$
CREATE TRIGGER before_emp_update_round
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
 SET NEW.salary = ROUND(NEW.salary, 0);
END$$
DELIMITER ;

-- Example to try
UPDATE employees SET salary = 45789.65 WHERE emp_id = 2;
SELECT * FROM employees;

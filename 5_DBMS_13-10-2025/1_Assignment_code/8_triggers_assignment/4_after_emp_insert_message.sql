DELIMITER $$
CREATE TRIGGER after_emp_insert_message
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
 SELECT CONCAT('Welcome ', NEW.emp_name, '!') AS Message;
END$$
DELIMITER ;

-- Example to try
INSERT INTO employees(emp_name, salary) VALUES ('sophia', 28000);

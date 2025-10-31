DELIMITER $$
CREATE TRIGGER before_emp_insert_upper
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
 SET NEW.emp_name = UPPER(NEW.emp_name);
END$$
DELIMITER ;

INSERT INTO employees(emp_name, salary) VALUES ('john doe', 40000);
SELECT * FROM employees;
DELIMITER $$
CREATE TRIGGER before_emp_insert_min_salary
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
 IF NEW.salary < 10000 THEN
   SET NEW.salary = 10000;
 END IF;
END$$
DELIMITER ;

-- Example to try
INSERT INTO employees(emp_name, salary) VALUES ('mary', 5000);
SELECT * FROM employees;
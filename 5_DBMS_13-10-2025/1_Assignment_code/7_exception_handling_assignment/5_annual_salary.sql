DELIMITER //
CREATE FUNCTION annual_salary(monthly DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
   RETURN monthly * 12;
END//
DELIMITER ;

SELECT emp_name, salary, annual_salary(salary) AS yearly FROM employees;

DELIMITER //
CREATE PROCEDURE safe_add_employee(IN name VARCHAR(100), IN sal DECIMAL(10,2), IN did INT)
BEGIN
   DECLARE invalid_dept CONDITION FOR SQLSTATE '45000';
   DECLARE EXIT HANDLER FOR invalid_dept
   BEGIN
       SELECT 'Invalid Department ID' AS message;
   END;

   IF (SELECT COUNT(*) FROM departments WHERE dept_id = did) = 0 THEN
       SIGNAL invalid_dept;
   ELSE
       INSERT INTO employees(emp_name, salary, dept_id)
       VALUES (name, sal, did);
       SELECT 'Employee added safely' AS message;
   END IF;
END//
DELIMITER ;

CALL safe_add_employee('Bob', 7000, 1);
CALL safe_add_employee('Charlie', 6000, 99);

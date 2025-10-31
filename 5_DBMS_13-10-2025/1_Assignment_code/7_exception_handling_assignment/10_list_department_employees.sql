DELIMITER //
CREATE PROCEDURE list_department_employees(IN did INT)
BEGIN
   DECLARE done INT DEFAULT 0;
   DECLARE ename VARCHAR(100);
   DECLARE cur CURSOR FOR SELECT emp_name FROM employees WHERE dept_id = did;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

   OPEN cur;
   loop2: LOOP
       FETCH cur INTO ename;
       IF done THEN
           LEAVE loop2;
       END IF;
       SELECT ename AS employee_name;
   END LOOP;
   CLOSE cur;
END//
DELIMITER ;

CALL list_department_employees(1);

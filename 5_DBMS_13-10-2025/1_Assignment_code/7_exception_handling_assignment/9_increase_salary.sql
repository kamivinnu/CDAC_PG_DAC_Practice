DELIMITER //
CREATE PROCEDURE increase_salary()
BEGIN
   DECLARE done INT DEFAULT 0;
   DECLARE eid INT;
   DECLARE sal DECIMAL(10,2);
   DECLARE cur CURSOR FOR SELECT emp_id, salary FROM employees;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

   OPEN cur;
   loop1: LOOP
       FETCH cur INTO eid, sal;
       IF done THEN
           LEAVE loop1;
       END IF;

       IF sal IS NULL THEN
           ITERATE loop1;
       END IF;

       UPDATE employees SET salary = salary * 1.10 WHERE emp_id = eid;
   END LOOP;
   CLOSE cur;

   SELECT 'Salaries increased by 10 percent' AS message;
END //
DELIMITER ;

CALL increase_salary();

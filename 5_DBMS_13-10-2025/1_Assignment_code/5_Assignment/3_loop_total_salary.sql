DROP PROCEDURE IF EXISTS loop_total_salary;
DELIMITER //
CREATE PROCEDURE loop_total_salary()
BEGIN
   DECLARE i INT DEFAULT 1;
   DECLARE total INT;
   DECLARE total_salary DECIMAL(10,2) DEFAULT 0;
   DECLARE sal DECIMAL(10,2);
   SELECT COUNT(*) INTO total FROM employees;

   salary_loop: LOOP
       IF i > total THEN
           LEAVE salary_loop;
       END IF;
       SELECT salary INTO sal FROM employees WHERE id = i;
       SET total_salary = total_salary + sal;
       SET i = i + 1;
   END LOOP salary_loop;
   SELECT total_salary AS Total_Salary;
END //
DELIMITER ;
CALL loop_total_salary();

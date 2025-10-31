DELIMITER //
CREATE PROCEDURE check_salary(IN sal DECIMAL(10,2))
BEGIN
   DECLARE low_salary CONDITION FOR SQLSTATE '45000';
   DECLARE EXIT HANDLER FOR low_salary
   BEGIN
       SELECT 'Salary too low' AS message;
   END;

   IF sal < 1000 THEN
       SIGNAL low_salary;
   ELSE
       SELECT 'Salary acceptable' AS message;
   END IF;
END//
DELIMITER ;

CALL check_salary(800);
CALL check_salary(5000);














select * from departments;
select * from employees;
DROP PROCEDURE IF EXISTS while_count_it;
DELIMITER //
CREATE PROCEDURE while_count_it()
BEGIN
   DECLARE i INT DEFAULT 1;
   DECLARE total INT;
   DECLARE dept VARCHAR(30);
   DECLARE count_it INT DEFAULT 0;
   SELECT COUNT(*) INTO total FROM employees;

   WHILE i <= total DO
       SELECT department INTO dept FROM employees WHERE id = i;
       IF dept = 'IT' THEN
           SET count_it = count_it + 1;
       END IF;
       SET i = i + 1;
   END WHILE;
   SELECT count_it AS Total_IT_Employees;
END //
DELIMITER ;
CALL while_count_it();

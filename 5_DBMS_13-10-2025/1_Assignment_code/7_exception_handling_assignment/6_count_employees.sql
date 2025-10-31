DELIMITER //
CREATE PROCEDURE count_employees()
BEGIN
   DECLARE done INT DEFAULT 0;
   DECLARE total INT DEFAULT 0;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
  
   SELECT COUNT(*) INTO total FROM employees WHERE dept_id IS NOT NULL;
   SELECT CONCAT('Total employees (with dept): ', total) AS message;
END//
DELIMITER ;

CALL count_employees();

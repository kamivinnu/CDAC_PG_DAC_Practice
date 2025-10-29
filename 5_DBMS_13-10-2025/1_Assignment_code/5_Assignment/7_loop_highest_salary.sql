DROP PROCEDURE IF EXISTS loop_highest_salary;
DELIMITER //
CREATE PROCEDURE loop_highest_salary()
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE total INT;
  DECLARE sal DECIMAL(10,2);
  DECLARE max_sal DECIMAL(10,2) DEFAULT 0;
  SELECT COUNT(*) INTO total FROM employees;

  find_loop: LOOP
      IF i > total THEN
          LEAVE find_loop;
	END IF;
		  SELECT salary INTO sal FROM employees WHERE id = i;
		  IF sal > max_sal THEN
			  SET max_sal = sal;
		  END IF;
		  SET i = i + 1;
	  END LOOP find_loop;
	  SELECT max_sal AS Highest_Salary;
END //
DELIMITER ;
CALL loop_highest_salary();

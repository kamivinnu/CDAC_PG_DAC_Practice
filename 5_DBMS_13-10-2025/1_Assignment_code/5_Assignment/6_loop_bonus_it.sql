DROP PROCEDURE IF EXISTS loop_bonus_it;
DELIMITER //
CREATE PROCEDURE loop_bonus_it()
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE total INT;
  DECLARE dept VARCHAR(30);
  SELECT COUNT(*) INTO total FROM employees;

  bonus_loop: LOOP
      IF i > total THEN
          LEAVE bonus_loop;
      END IF;
      SELECT department INTO dept FROM employees WHERE id = i;
      IF dept = 'IT' THEN
          UPDATE employees SET salary = salary + 2000 WHERE id = i;
      END IF;
      SET i = i + 1;
  END LOOP bonus_loop;
END //
DELIMITER ;
CALL loop_bonus_it();
SELECT * FROM employees;

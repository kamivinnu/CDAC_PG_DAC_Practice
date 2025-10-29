DROP PROCEDURE IF EXISTS repeat_bonus_pool;
DELIMITER //
CREATE PROCEDURE repeat_bonus_pool()
BEGIN
   DECLARE total_bonus DECIMAL(10,2) DEFAULT 0;
   DECLARE bonus DECIMAL(10,2) DEFAULT 15000;
   REPEAT
       SET total_bonus = total_bonus + bonus;
       SELECT total_bonus AS Current_Bonus;
   UNTIL total_bonus > 100000
   END REPEAT;
END //
DELIMITER ;
CALL repeat_bonus_pool();

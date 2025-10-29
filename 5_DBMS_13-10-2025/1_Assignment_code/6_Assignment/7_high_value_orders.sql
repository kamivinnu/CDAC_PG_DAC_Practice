DELIMITER //
CREATE PROCEDURE high_value_orders()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE oid INT;
    DECLARE amt DECIMAL(10,2);
    DECLARE cur CURSOR FOR SELECT order_id, total_amount FROM orders WHERE total_amount > 10000;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    hv_loop: LOOP
        FETCH cur INTO oid, amt;
        IF done THEN
            LEAVE hv_loop;
        END IF;
        SELECT CONCAT('Order ', oid, ' amount ₹', amt, ' is a high-value order') AS message;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL high_value_orders();

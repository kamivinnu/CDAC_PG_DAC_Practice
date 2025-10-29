DELIMITER //
CREATE PROCEDURE copy_orders_to_audit()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE oid INT;
    DECLARE pid INT;
    DECLARE tamt DECIMAL(10,2);
    DECLARE cur CURSOR FOR SELECT order_id, product_id, total_amount FROM orders;
	DECLARE EXIT HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    loop1: LOOP
        FETCH cur INTO oid, pid, tamt;
        IF done THEN
            LEAVE loop1;
        END IF;
        INSERT INTO order_audit VALUES (oid, pid, tamt);
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL copy_orders_to_audit();

select * from order_audit;

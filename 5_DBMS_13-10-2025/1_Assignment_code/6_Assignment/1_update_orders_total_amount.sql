DELIMITER //
CREATE PROCEDURE update_orders_total_amount()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE oid INT;
    DECLARE pid INT;
    DECLARE qty INT;
    DECLARE pr DECIMAL(10,2);
    DECLARE cur CURSOR FOR SELECT order_id, product_id, quantity FROM orders;
    DECLARE EXIT HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    cur_loop: LOOP
        FETCH cur INTO oid, pid, qty;
        IF done THEN
            LEAVE cur_loop;
        END IF;
        SELECT price INTO pr FROM products WHERE product_id = pid;
        UPDATE orders SET total_amount = pr * qty WHERE order_id = oid;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL update_orders_total_amount();

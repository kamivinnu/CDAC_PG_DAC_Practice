DELIMITER //
CREATE PROCEDURE reduce_stock_after_orders()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE pid INT;
    DECLARE qty INT;
    DECLARE cur CURSOR FOR SELECT product_id, quantity FROM orders;
    DECLARE EXIT HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    stock_loop: LOOP
        FETCH cur INTO pid, qty;
        IF done THEN
            LEAVE stock_loop;
        END IF;
        UPDATE products SET stock = stock - qty WHERE product_id = pid;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL reduce_stock_after_orders();

select * from products;

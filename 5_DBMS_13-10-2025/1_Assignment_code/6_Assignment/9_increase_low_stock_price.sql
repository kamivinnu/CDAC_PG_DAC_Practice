DELIMITER //
CREATE PROCEDURE increase_low_stock_price()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE pid INT;
    DECLARE pr DECIMAL(10,2);
    DECLARE cur CURSOR FOR SELECT product_id, price FROM products WHERE stock < 5;
    DECLARE EXIT HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    lp_loop: LOOP
        FETCH cur INTO pid, pr;
        IF done THEN
            LEAVE lp_loop;
        END IF;
        UPDATE products SET price = pr * 1.10 WHERE product_id = pid;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL increase_low_stock_price();

select * from products;

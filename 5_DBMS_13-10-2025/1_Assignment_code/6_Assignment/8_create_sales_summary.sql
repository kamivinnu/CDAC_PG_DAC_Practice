CREATE TABLE IF NOT EXISTS product_sales_summary (
    product_id INT,
    total_quantity INT
);

DELIMITER //
CREATE PROCEDURE create_sales_summary()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE pid INT;
    DECLARE qty INT;
    DECLARE cur CURSOR FOR SELECT product_id, quantity FROM orders;
    DECLARE EXIT HANDLER FOR NOT FOUND SET done = 1;

    TRUNCATE TABLE product_sales_summary;

    OPEN cur;
    sum_loop: LOOP
        FETCH cur INTO pid, qty;
        IF done THEN
            LEAVE sum_loop;
        END IF;
        INSERT INTO product_sales_summary(product_id, total_quantity)
        VALUES (pid, qty)
        ON DUPLICATE KEY UPDATE total_quantity = total_quantity + qty;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL create_sales_summary();
SELECT * FROM product_sales_summary;

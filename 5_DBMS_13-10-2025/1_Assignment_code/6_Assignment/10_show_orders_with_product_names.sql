DELIMITER //
CREATE PROCEDURE show_orders_with_product_names()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE oid INT;
    DECLARE pname VARCHAR(50);
    DECLARE qty INT;
    DECLARE cur CURSOR FOR
        SELECT o.order_id, p.product_name, o.quantity
        FROM orders o JOIN products p ON o.product_id = p.product_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO oid, pname, qty;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('Order ', oid, ': ', qty, ' x ', pname) AS details;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL show_orders_with_product_names();

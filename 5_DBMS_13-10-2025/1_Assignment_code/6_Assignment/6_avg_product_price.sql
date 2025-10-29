DELIMITER //
CREATE PROCEDURE avg_product_price()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE pr DECIMAL(10,2);
    DECLARE total DECIMAL(10,2) DEFAULT 0;
    DECLARE countp INT DEFAULT 0;
    DECLARE cur CURSOR FOR SELECT price FROM products;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    loop_prices: LOOP
        FETCH cur INTO pr;
        IF done THEN
            LEAVE loop_prices;
        END IF;
        SET total = total + pr;
        SET countp = countp + 1;
    END LOOP;
    CLOSE cur;

    SELECT total / countp AS 'Average Product Price';
END //
DELIMITER ;

CALL avg_product_price();

DELIMITER //
CREATE PROCEDURE display_out_of_stock()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE pname VARCHAR(50);
    DECLARE cur CURSOR FOR SELECT product_name FROM products WHERE stock <= 0;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO pname;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT(pname, ' is out of stock') AS message;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

CALL display_out_of_stock();

select * from products;

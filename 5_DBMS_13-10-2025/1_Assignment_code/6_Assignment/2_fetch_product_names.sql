DELIMITER //
CREATE PROCEDURE fetch_product_names()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE pname VARCHAR(50);
    DECLARE cur CURSOR FOR SELECT product_name FROM products;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    CREATE TEMPORARY TABLE names(name VARCHAR(50));

    OPEN cur;
    cur_loop: LOOP
        FETCH cur INTO pname;
        IF done THEN
            LEAVE cur_loop;
        END IF;
        INSERT INTO names VALUES (pname);
    END LOOP;
    CLOSE cur;

    SELECT * FROM names;
    DROP TEMPORARY TABLE IF EXISTS names;
END //
DELIMITER ;

CALL fetch_product_names();

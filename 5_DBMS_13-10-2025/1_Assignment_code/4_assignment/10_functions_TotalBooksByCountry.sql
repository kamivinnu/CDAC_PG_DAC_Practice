-- Write a function to return the total number of books available by authors from a specific country.

DELIMITER $$

CREATE FUNCTION TotalBooksByCountry(authorCountry VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_books INT;

    SELECT SUM(b.stock) 
    INTO total_books
    FROM books b
    JOIN authors a ON b.author_id = a.author_id
    WHERE a.country = authorCountry;

    -- If no authors found from that country, return 0 instead of NULL
    IF total_books IS NULL THEN
        SET total_books = 0;
    END IF;

    RETURN total_books;
END $$

DELIMITER ;

SELECT TotalBooksByCountry('India') AS Total_Books_In_Stock;

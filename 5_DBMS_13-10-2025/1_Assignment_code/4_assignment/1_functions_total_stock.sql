-- 1. Write a function to return the total number of books in stock.

delimiter //
create function totalBooksInStock()
returns int deterministic
begin
	declare total int default 0;
    select sum(stock) into total
    from books;
    return total;
end //
delimiter ;

select totalBooksInStock() as TotalStock;

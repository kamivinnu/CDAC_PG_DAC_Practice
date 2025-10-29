-- Write a function to find the total value of all books in stock (price × stock).

delimiter //
create function totalValue()
returns decimal(10, 2) deterministic

begin
	declare t_price decimal(10, 2);
    declare t_stock int;
    
    select sum(price) into t_price
        from books;
        
	select sum(stock) into t_stock
        from books;
        
	return t_price * t_stock;
        
end //
delimiter ;

select totalValue() as TotalValueOfAllBooks;
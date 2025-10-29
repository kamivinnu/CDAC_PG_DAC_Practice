-- Write a function to check if a given book is in stock or not.

delimiter //
create function IsBookInStock(bookTitle varchar(50))
returns varchar(50) deterministic
begin
	declare availble_stock int;
	declare status varchar(50);
    
    select stock into availble_stock 
    from books where title = bookTitle;
    
    if availble_stock > 0 then
		set status = 'In Stock';
	else
		set status = 'Out of Stock';
	end if;
    
    return status;
end //
delimiter ;

select IsBookInStock('Harry Potter');
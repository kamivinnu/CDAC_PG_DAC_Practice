-- Write a function to return the price of a given book title.

delimiter //
create function priceOfBookTitle(t varchar(50))
returns decimal(10,2) deterministic
begin
	declare priceBook decimal(10, 2) default 0;
    select price into priceBook
    from books where title = t;
    
    return priceBook;
end //
delimiter ;

select priceOfBookTitle('2 States');
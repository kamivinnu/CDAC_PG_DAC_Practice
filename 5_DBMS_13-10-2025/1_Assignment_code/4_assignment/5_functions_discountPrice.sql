-- Write a function to calculate a 10% discount on the price of a given book.

delimiter //
create function discountPrice(bookTitle varchar(50))
returns decimal(10, 2) deterministic
begin
	declare bookPrice decimal(10, 2);
    
    select price into bookPrice
    from books where title = bookTitle;
    
    return bookPrice - (bookPrice * 10/100);
end //
delimiter ;

select discountPrice('2 States') as FinalPriceBook;
select * from books;
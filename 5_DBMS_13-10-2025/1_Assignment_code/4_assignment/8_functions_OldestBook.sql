-- Write a function to return the oldest book title in the store.
drop function OldestBook;
delimiter //
create function OldestBook()
returns varchar(50) deterministic
begin
	declare oldBook varchar(50);
    
    select title into oldBook 
    from books where published_year = (select min(published_year) from books);
    
    return oldBook;
end //
delimiter ;

select OldestBook() as OldestBookInBookStore;
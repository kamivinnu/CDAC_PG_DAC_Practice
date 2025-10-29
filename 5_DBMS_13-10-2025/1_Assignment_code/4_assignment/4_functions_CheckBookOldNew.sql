-- Write a function to return whether a book is "Old" or "New" based on its published year(before 2000 → Old, else → New).

delimiter //
create function CheckBookOldNew(bookTitle varchar(50))
returns varchar(10) deterministic
begin
	declare yearPublished int;
    declare status varchar(50);
    
    select published_year into yearPublished
    from books where title = bookTitle;
    
    if yearPublished < 2000 then
		set status = 'OLD';
	else
		set status = 'NEW';
	end if;
    
    return status;
end //
delimiter ;

select CheckBookOldNew('Harry Potter') AS Book_Status;

select CheckBookOldNew('Five Point Someone') AS Book_Status;

select * from books;
-- Write a function to return the author's country for a given book.

delimiter //
create function authorCountry(bookName varchar(50))
returns varchar(50) deterministic
begin
	declare a_c_name varchar(50);
    
    select a.country into a_c_name
    from books b 
    join authors a on b.author_id = a.author_id
    where title = bookName;
    
    return a_c_name;
end //
delimiter ;

select authorCountry('Malgudi Days') as AuthorCountry;
select * from authors;
select * from books;
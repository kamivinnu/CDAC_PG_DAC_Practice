-- Write a function to find how many books an author has written.
drop function BookByAuthor;

delimiter //
create function BookByAuthor(authorName varchar(50))
returns int deterministic
begin
	declare bookCount int default 0;
    
    select count(b.book_id) into bookCount
    from books b
    join authors a on b.author_id = a.author_id
    where a.author_name = authorName;
    
    return bookCount;
end //
delimiter ;


select BookByAuthor('Chetan Bhagat') as Total_Books;
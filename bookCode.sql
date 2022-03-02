  # ----- MARK: CONCAT -----

# SELECT CONCAT
#     (
#         SUBSTRING(title, 1, 10),
#         '...'
#     ) AS 'short title'
# FROM books;



    # ----- MARK: SUBSTRING ----- 

# SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;



    # ----- MARK: REPLACE -----
    
# SELECT REPLACE(title, 'e', '3') AS 'e = 3' FROM books



    # ----- MARK: CHAR_LENGTH -----

# SELECT 
#     CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') AS 'Name Length:'



    # ----- MARK: UPPER/LOWER -----

# SELECT UPPER(title) FROM books;
 
# SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
 
# SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

# FROM books;



    # ----- MARK: DISTINCT -----
    
# SELECT DISTINCT author_lname FROM books;
 
# SELECT author_fname, author_lname FROM books;
 
# SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
 
# SELECT DISTINCT author_fname, author_lname FROM books;    



    # ----- MARK: ORDER BY -----
    
# (ASC by default)

# SELECT released_year FROM books ORDER BY released_year DESC

# SELECT title, author_fname, author_lname 
# FROM books ORDER BY 2;
 
# SELECT title, author_fname, author_lname 
# FROM books ORDER BY 3;
 
# SELECT title, author_fname, author_lname 
# FROM books ORDER BY 1;
 
# SELECT title, author_fname, author_lname 
# FROM books ORDER BY 1 DESC;
 
# SELECT author_lname, title
# FROM books ORDER BY 2;
 
# SELECT author_fname, author_lname FROM books 
# ORDER BY author_lname, author_fname;



    # ----- MARK: LIMIT -----
    
# SELECT title, released_year FROM books 
# ORDER BY released_year DESC LIMIT 14;

# SELECT title, released_year FROM books 
# ORDER BY released_year DESC LIMIT 1,3; //set starting index then limit amount
 
# SELECT title, released_year FROM books 
# ORDER BY released_year DESC LIMIT 10,1;
 
# SELECT * FROM tbl LIMIT 95,18446744073709551615; //set arbitrary large number to ensure upper limit is sufficient   
    
    

    # ---- MARK: LIKE -----
    
# (% = wildcard operator %da% -> contains 'da' / da% -> starts with 'da' / %da -> ends with 'da')

# SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
 
# SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
 
# SELECT title FROM books WHERE  title LIKE 'the';
 
# SELECT title FROM books WHERE  title LIKE '%the';
 
# SELECT title FROM books WHERE title LIKE '%the%';


# (underscore wildcard -> no. of underscores = exact number of characters)

# SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
 
# SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
 
# (235)234-0987 LIKE '(___)___-____'
 
# SELECT title FROM books;
 
# SELECT title FROM books WHERE title LIKE '%\%%'
 
# SELECT title FROM books WHERE title LIKE '%\_%'

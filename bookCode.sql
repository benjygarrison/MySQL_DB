
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

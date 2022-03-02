# CREATE DATABASE customer_db;

# USE customer_db;

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
    
INSERT INTO customers(first_name, last_name, email) VALUES 
    ('custFirst1', 'custLast1', 'email1@email.com'),
    ('custFirst2', 'custLast2', 'email2@email.com'),
    ('custFirst3', 'custLast3', 'email3@email.com'),
    ('custFirst4', 'custLast4', 'email4@email.com');
    
CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
    ON DELETE CASCADE
);

INSERT INTO orders(order_date, amount, customer_id) VALUES 
    ('2020/02/01', 80.99, 1),
    ('2019/04/30', 90.99, 1),
    ('2003/10/01', 103.99, 3),
    ('2020/11/02', 60.99, 2);
    

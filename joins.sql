# INNER JOIN
-- select all records from both tables A and B where the join condition is met

# SELECT * FROM customers
# JOIN orders
#     ON customers.id = orders.customer_id;
# SELECT first_name, last_name, order_date, amount 
# FROM customers
# JOIN orders
#     ON customers.id = orders.customer_id;  
# SELECT *
# FROM orders
# JOIN customers
#     ON customers.id = orders.customer_id;



# LEFT JOIN
-- select all records from table A (primary) and any matching records from table B (dependent)

# SELECT * FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id;
# SELECT first_name, last_name, order_date, amount
# FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id; 
# SELECT 
#     first_name, 
#     last_name,
#     IFNULL(SUM(amount), 0) AS total_spent
# FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id
# GROUP BY customers.id
# ORDER BY total_spent;



# RIGHT JOIN
-- select all records from table B (dependent) and any matching records from table A (primary)

# SELECT 
#     IFNULL(first_name,'MISSING') AS first, 
#     IFNULL(last_name,'USER') as last, 
#     order_date, 
#     amount, 
#     SUM(amount)
# FROM customers
# RIGHT JOIN orders
#     ON customers.id = orders.customer_id
# GROUP BY first_name, last_name;





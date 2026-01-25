CREATE TABLE order_details (
    order_details_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    pizza_id VARCHAR(50),
    quantity INTEGER);

CREATE TABLE orders (
    order_id INTEGER,
    order_date DATE,
    order_time TIME
);

CREATE TABLE pizzas (
    pizza_id VARCHAR(50) ,
    pizza_type_id VARCHAR(50),
    size VARCHAR(10),
    price NUMERIC(10,2));

CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50),
    name VARCHAR(200),
    category VARCHAR(100),
    ingredients TEXT);



Questions

Phase 1: Foundation & Inspection
1. Install IDC_Pizza.dump as IDC_Pizza server
DONE

2. List all unique pizza categories (DISTINCT).

Answer:
SELECT DISTINCT category
FROM pizza_types;

3. Display pizza_type_id, name, and ingredients, replacing NULL ingredients with

Answer:
"Missing Data". Show first 5 rows.
SELECT pizza_type_id, name, COALESCE (ingredients, 'Missing Data') 
AS ingredients_cleaned
FROM pizza_types
LIMIT 5;

4. Check for pizzas missing a price (IS NULL).

Answer:
SELECT pizza_id	pizza_type_id, price
FROM pizzas
WHERE price IS NULL;

Phase 2: Filtering & Exploration
1. Orders placed on '2015-01-01' (SELECT + WHERE).

Answer:
SELECT order_id, order_date
FROM orders
WHERE order_date= '2015-01-01';

2. List pizzas with price descending.

Answer:
SELECT pizza_id, size, price
FROM pizzas
ORDER BY price DESC;

3. Pizzas sold in sizes 'L' or 'XL'.

Answer:
SELECT pizza_id, size, price
FROM pizzas
WHERE size IN ('L','XL');

4. Pizzas priced between $15.00 and $17.00.

Answer:
SELECT pizza_id, size, price
FROM pizzas
WHERE price BETWEEN 15 AND 17;

5. Pizzas with "Chicken" in the name.

Answer:
SELECT pizza_type_id, name, category
FROM pizza_types
WHERE name LIKE '%Chicken%';

6. Orders on '2015-02-15' or placed after 8 PM.

Answer:
SELECT order_id, order_date, order_time
FROM orders
WHERE order_date = '2015-02-15'
OR order_time >= '20:00:00';


Phase 3: Sales Performance

1. Total quantity of pizzas sold (SUM).

Answer:
SELECT pizza_id, quantity, SUM (quantity) AS total_quantity_of_pizzas
FROM order_details
GROUP BY pizza_id, quantity;

2. Average pizza price (AVG).

Answer:
SELECT ROUND (AVG (price),2) AS average_pizza_price
FROM pizzas;

3. Total order value per order (JOIN, SUM, GROUP BY).

Answer:
SELECT od.order_id, SUM(od.quantity * p.price) AS total_order_value
FROM order_details od
LEFT JOIN pizzas p
ON od.pizza_id = p.pizza_id
GROUP BY od.order_id;


4. Total quantity sold per pizza category (JOIN, GROUP BY).

Answer:
SELECT p.category, SUM (od.quantity) AS total_quantity
FROM pizza_types p
JOIN pizzas ps
ON p.pizza_type_id = ps.pizza_type_id
JOIN order_details od
ON od.pizza_id = ps.pizza_id
GROUP BY p.category;

5. Categories with more than 5,000 pizzas sold (HAVING).

Answer:
SELECT pt.category, SUM (od.quantity) AS total_quantity
FROM pizza_types pt
JOIN pizzas p
ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od
ON od.pizza_id = p.pizza_id
GROUP BY category
HAVING SUM (od.quantity) > 5000;


6. Pizzas never ordered (LEFT/RIGHT JOIN).

Answer:
SELECT p.pizza_id
FROM pizzas p
LEFT JOIN order_details od
ON od.pizza_id= p.pizza_id
WHERE od.pizza_id IS NULL;


7. Price differences between different sizes of the same pizza (SELF JOIN).

Answer:
SELECT p1.size AS size_p1,
p1.price AS price_p1,
p2.size AS size_p2,
p2.price AS price_p2,
p2.price - p1.price AS price_difference
FROM pizzas p1
LEFT JOIN pizzas p2
ON p1.pizza_type_id = p2.pizza_type_id
WHERE p2.price - p1.price >0
AND p1.size<> p2.size;





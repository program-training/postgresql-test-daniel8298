-- 1
SELECT * FROM employees

-- 3
SELECT first_name,last_name,city FROM employees
WHERE country ILIKE 'USA' AND city NOT ILIKE 'Seattle'

-- 4
SELECT products.product_name FROM products INNER JOIN suppliers
ON products.supplier_id = suppliers.supplier_id
WHERE suppliers.supplier_id = 2
ORDER BY products.unit_price DESC LIMIT 3


-- 6
SELECT categories.category_name FROM categories INNER JOIN products
ON categories.category_id = products.category_id
GROUP BY categories.category_name
HAVING COUNT(products.category_id) > 10


-- 8
 SELECT  employees.first_name, employees.last_name, territories.territory_description FROM employees INNER JOIN employee_territories
 ON employees.employee_id = employee_territories.employee_id
 INNER JOIN territories
 ON employee_territories.territory_id = territories.territory_id

-- 9
 SELECT employees.first_name,employees.last_name,COUNT(orders.employee_id) AS totalOrders FROM employees INNER JOIN orders
 ON employees.employee_id = orders.employee_id
 GROUP BY employees.first_name,employees.last_name
 HAVING COUNT(orders.employee_id) > 100
 




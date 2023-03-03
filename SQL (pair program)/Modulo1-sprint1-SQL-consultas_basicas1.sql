USE northwind;

SELECT employee_id, last_name, first_name
	FROM employees;
    
SELECT product_name
	FROM products
    WHERE unit_price <= 5;
    
SELECT product_name, unit_price
	FROM products
    WHERE (unit_price = 18 OR unit_price = 19 OR unit_price = 20);
    
    
SELECT product_name, unit_price
	FROM products
    WHERE (unit_price >= 15 AND unit_price <=50);
    
    
SELECT product_name, unit_price
	FROM products
    WHERE unit_price IS NULL;
    
    

    
CREATE SCHEMA `consultas_bascias2`;
USE `northwind`;


/* 1. Conociendo el tipo de productos que vendemos en Northwind:
Crea una consulta que muestre los primeros 10 productos según su ID 
y que nos indique el nombre de dichos productos y sus precios. */

/* Hacemos una consulta solicitando el nombre y precio del producto así como el ID para
comprobar que los índices son los correctos (hasta el 10) */
SELECT product_name, unit_price, product_id
FROM products
LIMIT 10;

/* 2. Ordenando los resultados:
Ahora realiza la misma consulta pero que nos muestre los últimos 
10 productos según su ID de manera descendiente.*/

-- Le damos la vuelta a la lista para poder coger los 10 últimos elementos con ORDER BY - DESC
SELECT product_name, unit_price, product_id
FROM products
ORDER BY product_id DESC
LIMIT 10;

/* 3. Que pedidos tenemos en nuestra BBDD:
Últimamente ha habido algo de descontrol en la empresa a la hora de controlar los pedidos. 
Nos interesa conocer qué pedidos distintos hemos tenido 
(eliminando entradas duplicadas según su ID en la tabla order_details).*/

SELECT DISTINCT order_id
FROM order_details;

/* 4. Los dos primeros pedidos:
Como el número de pedidos es demasiado alto para visualizarlo de manera práctica en la consulta anterior, 
vamos a limitar los resultados sólo a los 2 primeros pedidos para verlos más en detalle. 
Sin embargo, en la tabla OrderDetails pueden existir varios registros para cada pedido, 
por lo que no nos servirá con un uso normal del comando LIMIT.*/


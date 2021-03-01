
SELECT 
customers.CustomerName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate  AS 'Data do pedido'
FROM w3schools.customers AS customers 
INNER JOIN  w3schools.orders AS orders
ON customers.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers AS shippers
ON shippers.ShipperId = orders.ShipperID
WHERE orders.ShipperID <>3
ORDER BY customers.CustomerName, shippers.ShipperName, orders.OrderDate;

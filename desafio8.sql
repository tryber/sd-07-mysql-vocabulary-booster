SELECT customer.ContactName AS "Nome de contato",
shippers.ShipperName AS "Empresa que fez o envio",
order_data.OrderDate AS "Data do pedido" 
FROM w3schools.customers AS customer
INNER JOIN w3schools.orders AS order_data
ON customer.CustomerID = order_data.CustomerID
INNER JOIN w3schools.shippers AS shippers
ON shippers.ShipperID = order_data.ShipperID
ORDER BY `Nome de contato`,`Empresa que fez o envio`,`Data do pedido`;

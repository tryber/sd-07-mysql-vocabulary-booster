SELECT DISTINCT
  customers.contactName AS "Nome de contato",
  shippers.ShipperName AS "Empresa que fez o envio",
  orders.OrderDate AS "Data do pedido"
FROM customers
JOIN orders
ON orders.customerID = customers.customerID
JOIN order_details
ON orders.OrderID = order_details.OrderID
JOIN products
ON order_details.ProductID = products.ProductID
JOIN shippers
ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName = 'Speedy Express' OR shippers.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;

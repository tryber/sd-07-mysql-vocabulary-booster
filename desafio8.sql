SELECT table_costumers.ContactName AS `Nome de contato`,
  table_shippers.ShipperName AS `Empresa que fez o envio`,
  table_orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS table_orders
  INNER JOIN w3schools.customers AS table_costumers ON table_orders.CustomerID = table_costumers.CustomerID
  INNER JOIN w3schools.shippers AS table_shippers ON table_orders.ShipperID = table_shippers.ShipperID
WHERE table_shippers.ShipperName = "Speedy Express"
  OR table_shippers.ShipperName = "United Package"
ORDER BY `Nome de contato`,
  `Empresa que fez o envio`,
  `Data do pedido`;

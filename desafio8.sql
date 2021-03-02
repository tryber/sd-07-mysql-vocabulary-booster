SELECT
	customers.ContactName AS 'Nome de contato',
  shippers.ShipperName AS 'Empresa que fez o envio',
  orders.OrderDate AS 'Data do pedido'
FROM orders
	JOIN customers ON orders.CustomerID = customers.CustomerID
	JOIN shippers ON orders.ShipperID = shippers.ShipperID
WHERE
	shippers.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY
	`Nome de contato`,
  `Empresa que fez o envio`,
  `Data do pedido`;
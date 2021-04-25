SELECT
  ContactName AS 'Nome de contato',
  ShipperName AS 'Empresa que fez o envio',
  OrderDate AS 'Data do pedido'
FROM
  w3schools.customers AS CUST
INNER JOIN
  w3schools.orders AS ORDS
ON
  CUST.CustomerID = ORDS.CustomerID
INNER JOIN 
  w3schools.shippers AS SHIP
ON
  ORDS.ShipperID = SHIP.ShipperID
WHERE
  ShipperName = "Speedy Express" 
OR 
  ShipperName = "United Package"
ORDER BY
  customerName ASC, ShipperName ASC, OrderDate ASC;

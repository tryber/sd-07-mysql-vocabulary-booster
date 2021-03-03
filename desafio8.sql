SELECT
	cus.ContactName AS `Nome de contato`,
    IF(shi.ShipperID <> 3, shi.ShipperName, Null) AS `Empresa que fez o envio`,
    ord.OrderDate AS `Data do pedido`
FROM w3schools.orders AS ord
INNER JOIN w3schools.shippers AS shi
ON ord.ShipperID = shi.ShipperID
INNER JOIN w3schools.customers AS cus
ON ord.CustomerID = cus.CustomerID
WHERE IF(shi.ShipperID != 3, shi.ShipperName, Null) IS NOT NULL
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;

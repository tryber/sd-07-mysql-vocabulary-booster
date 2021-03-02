SELECT c.ContactName, IF(o.ShipperID IN (1, 2), s.ShipperName, NULL) AS 'Empresa que fez o envio', o.OrderDate AS 'Data do pedido' FROM w3schools.customers AS c INNER JOIN w3schools.orders AS o ON c.CustomerID = o.CustomerID INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID WHERE IF(o.ShipperID IN (1, 2), s.ShipperName, NULL) IS NOT NULL ORDER BY c.ContactName, s.ShipperName, o.OrderDate;

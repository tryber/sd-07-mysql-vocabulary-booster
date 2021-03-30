SELECT c.ContactName, orders.OrderDate, s.ShipperName FROM w3schools.orders orders
LEFT JOIN w3schools.shippers s
ON s.ShipperID = orders.ShipperID
LEFT JOIN w3schools.customers c
ON orders.CustomerID = c.CustomerID;

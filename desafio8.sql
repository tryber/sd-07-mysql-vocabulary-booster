SELECT w3schools.customers.ContactName as "Nome de contato",
w3schools.shippers.ShipperName as "Empresa que fez o envio",
w3schools.orders.OrderDate as "Data do pedido"
FROM w3schools.orders
inner join w3schools.customers
on w3schools.orders.CustomerID = w3schools.customers.CustomerID
inner join w3schools.shippers
on w3schools.orders.ShipperID = w3schools.shippers.ShipperID
where w3schools.shippers.ShipperName in ("Speedy Express", "United Package")
order by w3schools.customers.CustomerName, w3schools.shippers.ShipperName, w3schools.orders.OrderDate;

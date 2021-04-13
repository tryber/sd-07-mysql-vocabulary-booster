select c.ContactName as 'Nome de contato',
s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido'
from w3schools.customers as c
Inner join w3schools.orders as o
on c.CustomerID = o.CustomerID
Inner Join w3schools.shippers as s
on o.ShipperID = s.ShipperID
having s.ShipperName = 'Speedy Express' or s.ShipperName = 'United Package' 
order by c.ContactName, s.ShipperName, o.OrderDate;

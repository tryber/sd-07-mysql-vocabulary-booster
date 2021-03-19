select wcustomers.contactName as "Nome de contato",
wshippers.shipperName as "Empresa que fez o envio",
worders.OrderDate as "Data do pedido"
from w3schools.orders as worders
inner join w3schools.customers as wcustomers
on wcustomers.CustomerID = worders.CustomerID
inner join w3schools.shippers as wshippers
on wshippers.ShipperID = worders.ShipperID
having `Empresa que fez o envio` = "Speedy Express" or `Empresa que fez o envio` = "United Package"
order by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido` asc;

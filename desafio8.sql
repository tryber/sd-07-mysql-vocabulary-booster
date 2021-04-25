select
cus.ContactName as "Nome de contato",
shi.ShipperName as "Empresa que fez o envio",
ord.OrderDate as "Data do pedido"
from w3schools.orders as ord
inner join w3schools.customers as cus
on cus.CustomerID = ord.CustomerID
inner join w3schools.shippers as shi
on shi.ShipperID = ord.ShipperID
where shi.ShipperName = "Speedy Express"
or shi.ShipperName = "United Package"
order by cus.ContactName, shi.ShipperName, ord.OrderDate;

select
pro.ProductName as "Produto",
pro.Price as "Preço"
from w3schools.products as pro
inner join w3schools.order_details as od
on pro.ProductID = od.ProductID
where od.Quantity > 80
order by pro.ProductName;
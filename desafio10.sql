select
pro.ProductName as "Produto",
min(ord.Quantity) as "Mínima",
max(ord.Quantity) as "Máxima",
round(avg(ord.Quantity), 2) as "Média"
from w3schools.order_details as ord
inner join w3schools.products as pro
on ord.ProductID = pro.ProductID
group by (ord.ProductID)
having avg(ord.Quantity) > 20.0
order by avg(ord.Quantity), pro.ProductName;

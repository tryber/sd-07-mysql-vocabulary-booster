select wproducts.ProductName as "Produto",
min(wdetails.Quantity) as "Mínima",
max(wdetails.Quantity) as "Máxima",
round(avg(wdetails.Quantity), 2) as "Média"
from w3schools.order_details as wdetails
inner join w3schools.products as wproducts
on wproducts.ProductID = wdetails.ProductID
group by wproducts.ProductName
having `Média` > 20
order by `Média`, `Produto` asc;

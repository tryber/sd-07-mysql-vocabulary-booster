SELECT p.ProductName as Produto,
min(d.Quantity) as Mínima,
max(d.Quantity) as Máxima,
ROUND(avg(d.Quantity),2) as 'Média'
FROM w3schools.products as p
Inner join w3schools.order_details as d
on p.ProductID = d.ProductID
group by p.ProductName
having `Média` > 20
order by `Média`, p.ProductName;

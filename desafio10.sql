select 
products.ProductName as Produto,
MIN(details.Quantity) as Mínima ,
MAX(details.Quantity) as Máxima,
round(avg(details.Quantity),2) as Média
from w3schools.products as products
INNER JOIN w3schools.order_details as details
on products.ProductID = details.ProductID
Group by products.ProductName
order by round(avg(details.Quantity),2), products.ProductName;

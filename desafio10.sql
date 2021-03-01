SELECT
t2.ProductName as Produto,
MIN(t1.Quantity) as Mínima,
MAX(t1.Quantity) as Máxima,
AVG(t1.Quantity) as Média
FROM w3schools.order_details as t1
INNER JOIN products as t2
on t1.ProductID = t2.ProductID
group by t2.ProductName
HAVING avg(t1.quantity) > 20
order by AVG(t1.Quantity), t2.ProductName

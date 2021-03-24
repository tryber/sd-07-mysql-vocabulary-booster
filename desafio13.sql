SELECT 
pd.ProductName AS Produto,
pd.Price AS `Preço`
FROM w3schools.order_details AS od
INNER JOIN w3schools.products as pd
ON pd.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY Produto;

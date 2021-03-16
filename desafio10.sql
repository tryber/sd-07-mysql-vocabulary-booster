SELECT wprod.ProductName AS 'Produto', MIN(wodet.Quantity) AS 'Mínima', MAX(wodet.Quantity) AS 'Máxima', ROUND(AVG(wodet.Quantity), 2) AS 'Média'
FROM w3schools.products wprod
INNER JOIN w3schools.order_details wodet ON wprod.ProductID = wodet.ProductID
GROUP BY wprod.ProductID
HAVING `Média` > 20
ORDER BY 4, 1

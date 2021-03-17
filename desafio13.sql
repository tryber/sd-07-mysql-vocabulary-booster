SELECT wprod.ProductName AS 'Produto', wprod.Price AS 'Preço'
FROM w3schools.products wprod
INNER JOIN w3schools.order_details wodet ON wodet.ProductID = wprod.ProductID AND wodet.Quantity > 80
ORDER BY 1;

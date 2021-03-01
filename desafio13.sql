SELECT P.ProductName Produto, P.Price Preço
FROM w3schools.order_details OD, w3schools.products P
WHERE P.ProductID=OD.ProductID
GROUP BY P.ProductID, OrderID
HAVING SUM(Quantity) > 80
ORDER BY Produto;

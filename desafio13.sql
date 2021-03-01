SELECT PRO.ProductName Produto, PRO.Price Preço
FROM w3schools.products PRO
INNER JOIN w3schools.order_details OD
ON PRO.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY PRO.ProductName;

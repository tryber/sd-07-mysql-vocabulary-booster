SELECT 
    P.ProductName AS `Produto`,
    MIN(OD.Quantity) AS `Mínima`,
    MAX(OD.Quantity) AS `Máxima`,
    ROUND(AVG(OD.Quantity), 2) AS `Média`
FROM orders O
    INNER JOIN order_details OD
      ON O.OrderID = OD.OrderID
    INNER JOIN products P
      ON OD.ProductID = P.ProductID
GROUP BY Produto
HAVING `Média` > 20
ORDER BY Média, Produto;

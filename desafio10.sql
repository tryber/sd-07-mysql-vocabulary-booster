SELECT 
    ProductName AS Produto,
    MIN(Quantity) AS Mínima,
    MAX(Quantity) AS Máxima,
    ROUND(AVG(Quantity), 2) AS Média
FROM
    w3schools.products AS t1
        INNER JOIN
    w3schools.order_details AS t2 ON t1.ProductID = t2.ProductID
GROUP BY Produto
ORDER BY Média ASC , Produto ASC;

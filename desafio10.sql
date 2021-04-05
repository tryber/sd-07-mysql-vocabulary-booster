SELECT PRODUTO.ProductName AS 'Produto', 
MIN(O_DETALHE.Quantity) AS 'Mínima',
MAX(O_DETALHE.Quantity) AS 'Máxima',
ROUND(AVG(O_DETALHE.Quantity),2) AS 'Média' 
FROM w3schools.products AS PRODUTO
INNER JOIN w3schools.order_details AS O_DETALHE
ON PRODUTO.ProductID = O_DETALHE.ProductID
GROUP BY PRODUTO.ProductName 
HAVING ROUND(AVG(O_DETALHE.Quantity), 2) > 20.00
ORDER BY AVG(O_DETALHE.Quantity), PRODUTO.ProductName;

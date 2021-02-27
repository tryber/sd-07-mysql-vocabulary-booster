SELECT
	P.ProductNAME AS 'Produto',
    MIN(O.Quantity) AS 'Mínima',
    MAX(O.Quantity) AS 'Máxima',
    ROUND(AVG(O.Quantity),2) AS 'Média'    
FROM w3schools.order_details O
JOIN w3schools.products P
	ON P.ProductID = O.ProductID
GROUP BY P.ProductNAME
HAVING ROUND(AVG(O.Quantity),2) > 20
ORDER BY AVG(Quantity), P.ProductNAME;
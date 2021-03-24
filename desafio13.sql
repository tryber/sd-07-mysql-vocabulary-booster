SELECT P.ProductName AS `Produto`, P.Price AS `Preço`
FROM order_details OD
    INNER JOIN products P
    ON OD.ProductId = P.ProductId
WHERE Quantity > 80
ORDER BY `Produto`;

SELECT 
  products.ProductName AS "Produto",
  products.Price AS "Preço"
FROM products
WHERE products.ProductID IN (SELECT order_details.ProductID FROM order_details GROUP BY order_details.ProductID HAVING SUM(order_details.Quantity) > 80)
ORDER BY Produto;

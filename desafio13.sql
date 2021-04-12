SELECT
t1.ProductName as Produto,
t1.price as Preço
from products as t1
INNER JOIN order_details as t2
on t1.ProductID = t2.ProductID
group by t1.ProductID
HAVING MAX(t2.quantity) > 80
ORDER BY t1.ProductName

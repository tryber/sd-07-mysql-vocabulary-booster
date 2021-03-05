SELECT País FROM
(SELECT Country AS País FROM w3schools.customers AS cust
UNION ALL
SELECT Country AS País FROM w3schools.suppliers AS S) AS sup
GROUP BY País
ORDER BY País
LIMIT 5;

SELECT A.ContactName Nome,
A.Country País,
COUNT(*)-1 `Número de compatriotas`
FROM w3schools.customers A, w3schools.customers B
WHERE A.Country = B.Country
GROUP BY A.ContactName, A.Country
HAVING `Número de compatriotas` > 0
ORDER BY Nome;

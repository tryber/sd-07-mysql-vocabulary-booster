SELECT SUP.ContactName AS "Nome",
SUP.Country AS "País",
(SELECT (COUNT(CUS.country) - 1) FROM w3schools.customers AS CUS WHERE SUP.country = CUS.country GROUP BY CUS.country) AS "Número de compatriotas"
FROM w3schools.customers AS SUP
HAVING "Número de compatriotas" >= 1
ORDER BY SUP.contactname;

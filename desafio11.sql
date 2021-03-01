SELECT
    t1.contactname AS "Nome",
    t1.country AS "País",
    (SELECT COUNT(*) - 1
        FROM w3schools.customers AS t2
        WHERE t1.country = t2.country
        GROUP BY t2.country
    ) AS "Número de compatriotas"
FROM w3schools.customers AS t1
HAVING `Número de compatriotas` > 0
ORDER BY t1.contactname;

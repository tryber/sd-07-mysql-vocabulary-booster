SELECT
  c1.contactname AS 'Nome',
  c1.country AS 'País',
  (SELECT COUNT(*) - 1
    FROM w3schools.customers AS c2
    WHERE c1.country = c2.country
    GROUP BY c2.country
  ) AS 'Número de compatriotas'
FROM w3schools.customers AS c1
HAVING `Número de compatriotas` > 0
ORDER BY c1.contactname;

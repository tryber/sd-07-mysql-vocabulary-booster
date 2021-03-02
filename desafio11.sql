SELECT
  ContactName AS 'Nome',
  CUSTO.Country AS 'País',
  num_pat.num - 1	AS 'Número de compatriotas'
FROM
  (SELECT Country, COUNT(Country) AS num FROM w3schools.customers GROUP BY Country) AS num_pat
INNER JOIN
  w3schools.customers AS CUSTO
ON
  CUSTO.Country = num_pat.Country
ORDER BY
  ContactName;

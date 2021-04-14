SELECT t1.ContactName as Nome,
t1.Country as País,
COUNT(t2.Country)-1 as 'Número de compatriotas'
FROM w3schools.customers as t1, w3schools.customers as t2
where t1.Country = t2.Country
GROUP BY t1.ContactName, t1.Country
Having `Número de compatriotas` > 0
Order by Nome;

-- não entendi nada desse, como pensar onde colocar o group by a principio, o exemplo da aula não funcionou
-- porque ele não funciona sem o group by ou porque o group by é assim e nem as outras resoluções das outras pessoas.

-- esse eu não sei se entendi bem o porque nem como está fazendo a subquerry

-- SELECT 
--     C.ContactName AS `Nome`,
--     C.Country AS `País`,
--     (SELECT (COUNT(Country) - 1) FROM customers WHERE Country = C.Country) 
--     AS `Número de compatriotas`
-- FROM w3schools.customers C
-- HAVING `Número de compatriotas` > 0
-- ORDER BY `Nome`;

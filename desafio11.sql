SELECT CTY1.ContactName Nome, CTY1.Country País, (COUNT(CTY2.Country) - 1)
FROM w3schools.customers CTY1, w3schools.customers CTY2
WHERE CTY1.Country = CTY2.Country
GROUP BY CTY1.CustomerID
HAVING COUNT(CTY1.COUNTRY) > 1
ORDER BY CTY1.ContactName;

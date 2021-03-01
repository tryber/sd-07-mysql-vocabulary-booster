INSERT INTO w3schools.customers (CustomerName, ContactName, Address, City, PostalCode, country) VALUES
("Torres Enterprise", "Francisco Torres", "Rua Zodiaco, 525", "Belo Horizonte", "30360430", "Australia");

SELECT DISTINCT Country País FROM w3schools.customers
ORDER BY Country
LIMIT 5;

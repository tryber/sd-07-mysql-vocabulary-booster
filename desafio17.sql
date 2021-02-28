USE w3schools;
DELIMITER $$
CREATE TRIGGER inserindoCarrosv2
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
INSERT INTO orders(OrderDate)
VALUES (CURRENT_DATE());
END; 
$$
DELIMITER ;

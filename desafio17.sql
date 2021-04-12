USE w3schools
DELIMITER $$
CREATE TRIGGER desafio17
before INSERT on orders
FOR EACH ROW
BEGIN
set NEW.OrderDate = CAST(now() AS DATE);
END $$
DELIMITER ;

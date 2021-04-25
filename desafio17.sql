USE w3schools;
DELIMITER $$

CREATE TRIGGER order_date_update
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$

DELIMITER ;

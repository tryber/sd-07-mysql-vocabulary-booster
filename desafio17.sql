USE w3schools;

DELIMITER $$

CREATE TRIGGER insere_data_automaticamente
BEFORE INSERT ON orders
FOR EACH ROW

BEGIN
SET NEW.OrderDate = NOW();
END $$

DELIMITER ;

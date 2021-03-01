DELIMITER $$

CREATE TRIGGER nome_do_trigger
	BEFORE INSERT ON w3schools.orders
	FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END; $$

DELIMITER ;

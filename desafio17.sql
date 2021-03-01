USE w3schools;
DELIMITER $$
CREATE TRIGGER insert_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE()
END; 
$$
DELIMITER ;

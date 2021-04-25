USE w3schools
DELIMITER $$
CREATE TRIGGER insert_order_date
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW());
END $$
DELIMITER ;

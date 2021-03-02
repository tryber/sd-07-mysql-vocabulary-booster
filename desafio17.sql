USE w3schools;
DELIMITER $$
CREATE TRIGGER insert_current_order_date
BEFORE INSERT ON
  orders
FOR EACH ROW
BEGIN
  SET NEW.OrderDate = NOW();
END $$
DELIMITER ;
USE w3schools;

DELIMITER $$

CREATE TRIGGER add_curr_ord_date
BEFORE INSERT ON
  orders
FOR EACH ROW
BEGIN
  SET NEW.OrderDate = NOW();
END $$

DELIMITER ;

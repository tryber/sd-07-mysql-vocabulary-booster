USE w3schools;
DELIMITER $$

CREATE TRIGGER insertOrderDate BEFORE INSERT ON orders
  FOR EACH ROW
BEGIN SET orders.OrderDate = NOW();
END $$

DELIMITER ;

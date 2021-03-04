USE w3schools;
DELIMITER $$

CREATE TRIGGER insertOrderDate BEFORE INSERT ON w3schools.orders
  FOR EACH ROW
BEGIN SET orders.OrderDate = NOW();
END $$

DELIMITER ;

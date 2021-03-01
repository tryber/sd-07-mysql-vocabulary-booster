USE w3schools;
DELIMITER $$

CREATE TRIGGER AdicionarNovoPedido
  BEFORE INSERT ON orders
  FOR EACH ROW
  BEGIN
    SET NEW.OrderDate = NOW();
  END $$
  DELIMITER ;

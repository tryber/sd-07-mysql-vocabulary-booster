USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_orders
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END; $$
DELIMITER ;

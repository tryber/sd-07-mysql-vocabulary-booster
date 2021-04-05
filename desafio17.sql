USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_data_atual
    BEFORE INSERT ON w3schools.orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = NOW();
END; $$
DELIMITER ;

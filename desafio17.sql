USE w3schools

DELIMITER $$
CREATE TRIGGER insert_order_date_on_create_orders
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.orderdate = NOW();
END; $$
DELIMITER ;

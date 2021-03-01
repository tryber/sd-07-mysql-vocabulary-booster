-- USE w3schools;

-- DELIMITER $$
-- CREATE TRIGGER insert_date
-- AFTER INSERT ON orders
-- FOR EACH ROW
-- BEGIN
-- INSERT INTO orders(OrderDate)
-- VALUES (NEW(DATE(NOW()))
-- END;

-- DELIMITER $$ ;

USE w3schools;

DELIMITER $$
CREATE TRIGGER desafio_17
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
INSERT INTO w3schools.orders (CustumerID, EmployeeID, , ShipperID)
VALUES(4, 2, DATE(NOW()), 2)
END $$
DELIMITER ;

use w3schools;
DELIMITER $$
CREATE TRIGGER novoRegistro
before INSERT on orders
for each row
begin 
set new.OrderDate = current_date();
end $$
DELIMITER ;

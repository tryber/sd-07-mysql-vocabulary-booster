use w3schools;
DELIMITER $$
CREATE TRIGGER novoRegistro
after INSERT on orders
for each row
begin 
insert into orders (OrderDate)
values(current_date());
end $$
DELIMITER ;

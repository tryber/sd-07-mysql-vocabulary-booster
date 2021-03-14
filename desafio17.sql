USE w3schools;
DELIMITER $$
create trigger newOrderDate
BEFORE insert on orders
for each row
begin
set new.OrderDate = now();
end $$
DELIMITER ;

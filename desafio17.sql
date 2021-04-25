use w3schools;

delimiter $$
create trigger get_current_date
before insert on orders
for each row
begin
set new.OrderDate = date(now());
end $$

delimiter ;

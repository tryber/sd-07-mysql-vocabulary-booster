use hr;
delimiter $$

create function buscar_quantidade_de_empregos_por_funcionario(emailInput varchar(25))
returns int reads sql data
begin
declare total_empregos int;
select count(*) from job_history where EMPLOYEE_ID = (select EMPLOYEE_ID
from employees where email = emailInput limit 1) into total_empregos;
return total_empregos;
end $$

delimiter ;

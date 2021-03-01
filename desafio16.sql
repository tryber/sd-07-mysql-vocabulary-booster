use hr;
delimiter $$

create procedure buscar_quantidade_de_empregos_por_funcionario(in email varchar(25))
begin
select count(*) from hr.job_history where EMPLOYEE_ID = (select EMPLOYEE_ID
from hr.employees where email = email);
end $$

delimiter ;

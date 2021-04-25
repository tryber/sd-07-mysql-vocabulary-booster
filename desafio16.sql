use hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailEntrada varchar(20))
returns int reads sql data
begin
declare total int;
select 
count(employees.EMAIL)
from hr.job_history AS history
INNER JOIN hr.employees AS employees
on history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = emailEntrada
into total;
return total;
end $$

DELIMITER ;

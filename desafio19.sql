use hr
DELIMITER $$
create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano (mes int, ano int)
returns int READS SQL DATA
begin
declare total int;
select 
count(*)
from hr.employees as emp
where MONTH(emp.HIRE_DATE) = mes and YEAR(emp.HIRE_DATE) = ano
into total;
return total;
end $$
DELIMITER ;
    
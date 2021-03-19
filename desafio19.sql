USE hr;
DELIMITER $$

CREATE FUNCTION 
exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
declare totalEmployeesHired int;
SELECT count(he.HIRE_DATE)
from hr.employees as he
where month(he.HIRE_DATE) = mes 
and year(he.HIRE_DATE) = ano
into totalEmployeesHired;
return totalEmployeesHired;
END $$

DELIMITER ;

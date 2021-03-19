USE hr;
DELIMITER $$

CREATE FUNCTION 
buscar_quantidade_de_empregos_por_funcionario(email_funcionario varchar(127))
RETURNS INT READS SQL DATA
BEGIN
declare jobHistoryCount int;
SELECT count(hjh.EMPLOYEE_ID) as "Média salarial"
from hr.job_history as hjh
inner join hr.employees as he
on email_funcionario = he.EMAIL 
and he.EMPLOYEE_ID = hjh.EMPLOYEE_ID
into jobHistoryCount;
return jobHistoryCount;
END $$

DELIMITER ;

use hr
DELIMITER $$
create FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(30))
RETURNS NUMERIC READS SQL DATA
BEGIN
DECLARE total INT;
SELECT totaljob from (select 
t1.EMPLOYEE_ID, 
count(t1.EMPLOYEE_ID) as totaljob,
t2.EMAIL
from job_history as t1 
inner join employees as t2
on t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
group by EMPLOYEE_ID 
HAVING t2.email = email) as tt
into total;
RETURN TOTAL;
END $$
DELIMITER ;

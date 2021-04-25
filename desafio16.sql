use hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_QTT INT;
select
count(*)
from hr.employees e
inner join hr.job_history jh on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
where e.EMAIL like concat('%', email, '%') INTO jobs_QTT;
RETURN jobs_QTT;
END $$
DELIMITER ;

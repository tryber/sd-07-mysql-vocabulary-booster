DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE qnt_jobs INT;
SELECT COUNT(*)
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobH
ON emp.EMPLOYEE_ID = jobH.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO qnt_jobs;
RETURN qnt_jobs;
END $$

DELIMITER ;

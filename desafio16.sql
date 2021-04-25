USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE number_of_jobs INT;
SELECT COUNT(EMP.EMAIL) FROM hr.employees EMP
INNER JOIN hr.job_history JH
ON EMP.EMPLOYEE_ID = JH.EMPLOYEE_ID
GROUP BY EMP.EMAIL
HAVING EMP.EMAIL = employee_email INTO number_of_jobs;
RETURN number_of_jobs;
END $$

DELIMITER ;

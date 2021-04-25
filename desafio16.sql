USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobsNumber int;
SELECT COUNT(hist.JOB_ID)
FROM hr.job_history AS hist
INNER JOIN hr.employees AS empl ON empl.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE empl.EMAIL = email
INTO jobsNumber;
RETURN jobsNumber;
END $$

DELIMITER ;

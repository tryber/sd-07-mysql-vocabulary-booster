USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalJobs INT;
SELECT COUNT(job_hist.EMPLOYEE_ID)
FROM hr.job_history AS job_hist
INNER JOIN hr.employees AS employees ON job_hist.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = email GROUP BY job_hist.EMPLOYEE_ID INTO totalJobs;
RETURN totalJobs;
END $$
DELIMITER ;

USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_emp VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalJobs INT;
SELECT COUNT(*) AS 'totalJobs'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.employee_id = jh.employee_id
WHERE email = email_emp INTO totalJobs;
RETURN totalJobs;
END $$

DELIMITER ;

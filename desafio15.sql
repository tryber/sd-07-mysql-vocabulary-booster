USE hr;

DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER |
CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(50))
BEGIN
   SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
        FROM hr.employees AS emp
        INNER JOIN hr.jobs AS job
			ON emp.JOB_ID = job.JOB_ID
            WHERE job.JOB_TITLE = cargo
			GROUP BY emp.JOB_ID;
    
END
|
DELIMITER ;

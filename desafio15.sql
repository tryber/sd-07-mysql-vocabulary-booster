USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN 
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM hr.jobs
JOIN hr.employees AS e ON jobs.JOB_ID = e.JOB_ID
WHERE cargo = jobs.JOB_TITLE;
END $$
DELIMITER; 

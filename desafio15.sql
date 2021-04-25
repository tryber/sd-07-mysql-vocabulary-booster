USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN office VARCHAR(50))
BEGIN
SELECT ROUND(AVG(empl.SALARY) ,2) AS 'Média salarial'
FROM hr.employees AS empl
INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = empl.JOB_ID
WHERE JOB_TITLE = office;
END $$
DELIMITER ;

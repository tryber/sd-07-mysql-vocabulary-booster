USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees e, hr.jobs j
WHERE j.JOB_ID = e.JOB_ID
AND j.JOB_TITLE = cargo;
END $$

DELIMITER ;

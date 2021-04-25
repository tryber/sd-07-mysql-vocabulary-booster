USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN JOB VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média Salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = JOB;
END $$

CALL buscar_media_por_cargo('Programmer');

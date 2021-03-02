USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo TEXT)
BEGIN
SELECT
ROUND(AVG(SALARY),2) AS `Média salarial`
FROM hr.jobs AS j
JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = nome_cargo
GROUP BY j.JOB_TITLE;
END $$

DELIMITER ;

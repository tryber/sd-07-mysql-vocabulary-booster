USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
IN nome_cargo VARCHAR(50))
BEGIN
SELECT
ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM hr.employees e
LEFT JOIN hr.jobs j ON j.job_id = e.job_id 
WHERE j.job_title = nome_cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');

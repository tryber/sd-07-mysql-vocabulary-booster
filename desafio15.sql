USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(E.salary), 2) AS 'Média salarial'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON J.job_id = E.job_id
WHERE J.job_title = cargo;
END $$

CALL buscar_media_por_cargo('Programmer');

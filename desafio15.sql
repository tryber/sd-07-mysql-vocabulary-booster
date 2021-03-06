USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM hr.employees e
JOIN hr.jobs j
ON e.job_id = j.job_id
GROUP BY j.job_title
HAVING j.job_title = 'Programmer';
END $$

DELIMITER ;

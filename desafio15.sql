USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_medi_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM hr.employees e1JOIN hr.jobs job_id
ON e.job_id = j.job_idGROUP BY j.job_title
HAVING j.job_title = 'Programmar';
END $$

DELIMITER ;

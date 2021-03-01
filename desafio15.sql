USE hr;
DELIMITER $$;
CREATE PROCEDURE buscar_media_por_cargo(IN job_title_parameter VARCHAR(50))
BEGIN
SELECT ROUND(AVG(E.salary),2) AS 'Média salarial'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.job_id = J.job_id
WHERE J.job_title = job_title_parameter;
END $$;
DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
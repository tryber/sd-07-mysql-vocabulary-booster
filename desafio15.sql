DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.Salary), 2) AS 'Média salarial' FROM hr.employees e INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID WHERE JOB_TITLE LIKE CONCAT('%', cargo,  '%');
END $$

DELIMITER ;

USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.salary), 2)
FROM hr.employees AS e
JOIN hr.jobs as j ON e.job_id = j.job_id AND j.job_title = job; 
END $$

DELIMITER ;

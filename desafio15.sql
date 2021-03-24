USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(emp.SALARY),2) AS `Média salarial`
FROM hr.jobs AS jb
INNER JOIN hr.employees AS emp
ON emp.JOB_ID = jb.JOB_ID
WHERE jb.JOB_TITLE = cargo;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE  buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS 'Média salarial'  
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs ON employees.JOB_ID = jobs.JOB_ID
WHERE JOB_TITLE = cargo;
END $$
DELIMITER ;

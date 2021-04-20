USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(300))
BEGIN
SELECT ROUND(AVG(emp.SALARY),2) AS  'Média salarial'
FROM employees AS emp
INNER JOIN jobs AS j
ON j.JOB_TITLE = job AND emp.JOB_ID = j.JOB_ID;
END $$
DELIMITER ;

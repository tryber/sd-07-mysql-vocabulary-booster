DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(cargo VARCHAR(35))
BEGIN
SELECT
ROUND(AVG(E.SALARY),2) AS 'Média salarial'
FROM hr.employees E
JOIN hr.jobs J ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = cargo;
END $$
DELIMITER ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_media_por_cargo`(IN jobTitle VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial' FROM(
SELECT E.SALARY, J.JOB_TITLE
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = jobTitle) AS Consulta
GROUP BY JOB_TITLE;
END

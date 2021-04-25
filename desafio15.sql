USE
  hr
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT 
  ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM
  hr.employees AS EMP
INNER JOIN
  hr.jobs AS JOB
ON
  JOB.JOB_ID = EMP.JOB_ID 
WHERE
  JOB.JOB_TITLE = cargo;
END $$
DELIMITER ;

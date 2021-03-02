USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT
  ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM
  hr.employees AS employer
INNER JOIN
  hr.jobs AS job
    ON employer.JOB_ID = job.JOB_ID
WHERE job.JOB_TITLE = cargo;
END $$
DELIMITER ;

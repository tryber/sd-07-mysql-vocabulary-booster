USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo TEXT)
BEGIN
SELECT 
ROUND(sum(employees.SALARY)/count(employees.SALARY), 2) AS "Média salarial"
FROM hr.employees
Where employees.JOB_ID in (
SELECT
jobs.JOB_ID
from hr.jobs
where jobs.JOB_TITLE = cargo);
END $$

DELIMITER ;

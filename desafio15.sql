USE hr
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT `Média salarial` FROM (SELECT
cast(AVG(employees.SALARY) AS DECIMAL(10,2)) AS `Média salarial`,
jobs.job_title
FROM employees AS employees
INNER JOIN jobs AS jobs
ON employees.job_id = jobs.job_id
GROUP BY employees.job_id
HAVING jobs.JOB_TITLE = 'Programmer') AS T;
END $$
DELIMITER ;

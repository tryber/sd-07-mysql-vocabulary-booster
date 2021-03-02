DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(employees.salary), 2) AS "Média salarial"
  FROM employees
  JOIN jobs
  ON employees.job_id = jobs.job_id
  WHERE jobs.job_title = job_title
  GROUP BY employees.job_id;
END $$
DELIMITER ;

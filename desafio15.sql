-- Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo.
-- Sua procedure deve retornar somente 01 coluna com o alias "Média salarial", que mostra a média salarial arredondada para duas casas decimais.
-- Use o banco hr como referência
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

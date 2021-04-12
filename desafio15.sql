use hr
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
  SELECT `Média salarial` FROM (SELECT
  cast(AVG(t1.SALARY) as decimal(10,2)) as `Média salarial`,
  t2.job_title
  from employees as t1
  INNER JOIN jobs as t2 
  on t1.job_id = t2.job_id
  group by t1.job_id
  HAVING t2.JOB_TITLE = 'Programmer') as T;
END $$
DELIMITER ;

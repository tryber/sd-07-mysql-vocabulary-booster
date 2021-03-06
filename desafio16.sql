-- SELECT * FROM hr.employees;
-- SELECT * FROM hr.job_history;
-- SELECT COUNT(*)
-- FROM hr.job_history jh
-- INNER JOIN hr.employees AS e
-- ON e.JOB_ID = jh.JOB_ID
-- WHERE e.EMAIL = email;
USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE jobs_quantity INT;
  SELECT COUNT(*)
  FROM hr.job_history jh
  INNER JOIN hr.employees e
  ON e.JOB_ID = jh.JOB_ID
  WHERE e.EMAIL = email
  GROUP BY jh.JOB_ID
  INTO jobs_quantity;
  RETURN jobs_quantity;
END $$

DELIMITER ;

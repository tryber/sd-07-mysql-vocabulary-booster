USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(255))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE jobs_count INT;
  SELECT
    COUNT(*)
  FROM hr.job_history AS jhist
  INNER JOIN
    hr.employees AS emp
      ON jhist.EMPLOYEE_ID = emp.EMPLOYEE_ID
  WHERE
    emp.EMAIL = email
  INTO jobs_count;
  RETURN jobs_count;
END $$
DELIMITER ;
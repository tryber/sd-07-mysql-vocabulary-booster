USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email CHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_jobs INT;
  SELECT COUNT(*)
  FROM job_history AS jh
  INNER JOIN employees AS e
    ON jh.employee_id = e.employee_id
  WHERE e.email = email
  INTO total_jobs;
  RETURN total_jobs;
END $$

DELIMITER ;

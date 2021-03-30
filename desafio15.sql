USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS "Média salarial"
  FROM hr.employees e
  INNER JOIN hr.jobs j
  ON e.JOB_ID = j.JOB_ID
  WHERE cargo = j.JOB_TITLE;
END $$ 

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');

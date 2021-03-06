USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(INOUT cargo VARCHAR(300))
BEGIN
  SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
  FROM hr.employees AS emp
  WHERE emp.JOB_ID = cargo;
END $$

DELIMITER ;

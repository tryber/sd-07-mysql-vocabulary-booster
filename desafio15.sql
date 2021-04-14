USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN jobid VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
  FROM employees e
  INNER JOIN jobs j
  ON e.job_id=j.job_id
  WHERE j.job_title=jobid
  GROUP BY e.job_id;
END $$;

DELIMITER ;

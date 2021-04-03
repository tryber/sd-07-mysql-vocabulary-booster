USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo3(IN jobTitle TEXT)
BEGIN
SELECT ROUND(AVG(emp.SALARY), 2) 'Média salarial' FROM employees emp
INNER JOIN jobs
ON jobs.JOB_ID = emp.JOB_ID
WHERE jobs.JOB_TITLE = jobTitle;
END $$;

DELIMITER ;

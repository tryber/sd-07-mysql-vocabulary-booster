DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo TEXT)
BEGIN
    SELECT ROUND(AVG(emp.SALARY), 2) AS "Média salarial"
    FROM hr.employees AS emp
    INNER JOIN hr.jobs AS job
    ON job.JOB_ID = emp.JOB_ID
    WHERE cargo = job.JOB_TITLE;
END $$

DELIMITER ;

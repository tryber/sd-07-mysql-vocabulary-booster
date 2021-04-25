USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
    IN job_name VARCHAR(50)
)
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
    FROM hr.employees e
    INNER JOIN hr.jobs j
    ON e.JOB_ID = j.JOB_ID
    WHERE j.JOB_TITLE like job_name;
END $$

DELIMITER ;

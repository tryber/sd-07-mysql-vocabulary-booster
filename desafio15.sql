USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN param_job_title VARCHAR(35))
BEGIN
    SELECT ROUND(AVG(e.SALARY),2) AS 'Média salarial'
    FROM hr.employees e
    INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
    WHERE UCASE(j.JOB_TITLE) LIKE UCASE(param_job_title)
    GROUP BY j.JOB_TITLE;
END $$

DELIMITER ;

-- Como usar:

CALL buscar_media_por_cargo('Programmer');

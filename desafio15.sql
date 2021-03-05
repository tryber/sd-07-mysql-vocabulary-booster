USE hr
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nomeDoCargo VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(employees.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS employees
    INNER JOIN hr.jobs AS jobs ON employees.JOB_ID = jobs.JOB_ID
    WHERE nomeDoCargo = jobs.JOB_TITLE;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');

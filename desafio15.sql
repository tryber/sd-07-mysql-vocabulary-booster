USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
    IN nome_cargo VARCHAR(50)
)
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS e
    INNER JOIN hr.jobs AS j ON e.JOB_Id = j.JOB_Id
    WHERE nome_cargo = j.JOB_TITLE;
END $$

DELIMITER ;
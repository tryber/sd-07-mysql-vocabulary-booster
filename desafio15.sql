DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
IN job VARCHAR(50),
OUT media DECIMAL(7,2)
)
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = job INTO media;
END$$

DELIMITER ;

SELECT 'Programmer' INTO @job;
CALL buscar_media_por_cargo(@job, @media);
SELECT @media AS `Média salarial`;

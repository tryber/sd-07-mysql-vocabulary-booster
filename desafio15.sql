SELECT * FROM hr.employees;

USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
    IN position_name VARCHAR(200),
    OUT average_remuneration DOUBLE
)
BEGIN
SET average_remuneration = (
SELECT
ROUND(AVG(EMP.SALARY), 2) "Média salarial"
FROM hr.jobs JOB
INNER JOIN hr.employees EMP
ON JOB.JOB_ID = EMP.JOB_ID
GROUP BY JOB.JOB_TITLE
HAVING JOB.JOB_TITLE = position_name
);
END $$

DELIMITER ;

SELECT @MediaSalarial;
CALL buscar_media_por_cargo('Programmer', @MediaSalarial);
SELECT @MediaSalarial "Média salarial";

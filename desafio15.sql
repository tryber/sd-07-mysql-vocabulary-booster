DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(jobType VARCHAR(30))
BEGIN
    SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
    FROM jobs J
    INNER JOIN employees E
    ON J.JOB_ID = E.JOB_ID
    WHERE JOB_TITLE = jobType;
END
$$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');

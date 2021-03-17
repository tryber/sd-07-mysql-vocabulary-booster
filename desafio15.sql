USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN JOB_NAME VARCHAR(100))
BEGIN
	SELECT ROUND(AVG(he.SALARY), 2) AS 'Média salarial'
	FROM hr.employees he
    INNER JOIN hr.jobs hj ON JOB_NAME = hj.JOB_TITLE AND hj.JOB_ID = he.JOB_ID;
END $$

DELIMITER ;

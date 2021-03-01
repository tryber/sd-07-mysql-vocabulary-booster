USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo_param VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(e.SALARY), 2) AS `Média Salarial`
	FROM employees AS `e`
	INNER JOIN jobs AS `j`
	ON e.JOB_ID = j.JOB_ID
	WHERE j.JOB_TITLE = cargo_param;
END $$

DELIMITER ;

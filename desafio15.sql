USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
DECLARE jobCode VARCHAR(100);
SELECT JOB_ID FROM hr.jobs WHERE cargo = JOB_TITLE INTO jobCode;
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees
WHERE jobCode = JOB_ID;
END $$
DELIMITER ;

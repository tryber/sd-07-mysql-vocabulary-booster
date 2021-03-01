USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(200))
BEGIN
SELECT ROUND(AVG(E.SALARY),2) AS "Média salarial"
FROM employees AS E
INNER JOIN jobs AS J
ON J.JOB_TITLE = nome_cargo AND E.JOB_ID = J.JOB_ID;
END $$
DELIMITER ;

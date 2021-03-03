USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT
ROUND(AVG(t1.SALARY), 2) AS `Média salarial`
FROM
employees AS t1
INNER JOIN
jobs AS t2 ON t1.JOB_ID = t2.JOB_ID
WHERE
t2.JOB_TITLE = cargo;
END $$
DELIMITER ;

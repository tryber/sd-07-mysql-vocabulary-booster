USE hr

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(50))
BEGIN
SELECT
    ROUND(AVG(t1.salary), 2) AS 'Média salarial'
FROM employees AS t1
    JOIN jobs AS t2 ON t1.job_id = t2.job_id
WHERE Cargo = t2.job_title;
END $$
DELIMITER ;

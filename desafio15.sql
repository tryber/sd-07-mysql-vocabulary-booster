USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50)) 
BEGIN
SELECT ROUND(AVG(employe.SALARY),2) FROM employees AS employe
INNER JOIN jobs AS job
ON employe.JOB_ID = job.JOB_ID
WHERE job.JOB_TITLE = cargo ;
END $$
DELIMITER ;

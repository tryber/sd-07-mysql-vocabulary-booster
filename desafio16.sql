USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity_jobs INT;
SELECT COUNT(*)
FROM hr.job_history AS h
JOIN hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID 
WHERE email = e.EMAIL INTO quantity_jobs;
RETURN quantity_jobs;
END $$
DELIMITER;

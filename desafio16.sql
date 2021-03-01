USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobsTotal INT;
DECLARE id INT;
SELECT EMPLOYEE_ID FROM hr.employees WHERE email = hr.employees.EMAIL INTO id;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.job_history
WHERE id = hr.job_history.EMPLOYEE_ID
INTO jobsTotal;
RETURN jobsTotal;
END $$
DELIMITER ;

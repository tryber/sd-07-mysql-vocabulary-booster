USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email text)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_empregos INT;
    SELECT 
		count(job_history.EMPLOYEE_ID) AS total_empregos
    FROM hr.job_history
    Where job_history.EMPLOYEE_ID in (
    SELECT
	employees.EMPLOYEE_ID
	from hr.employees
    where employees.EMAIL = email)
    into total_empregos;
    return total_empregos;
END $$

DELIMITER ;

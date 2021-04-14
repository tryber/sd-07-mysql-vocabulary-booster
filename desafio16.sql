USE hr
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT totaljob FROM (SELECT 
job_history.EMPLOYEE_ID, 
count(job_history.EMPLOYEE_ID) AS totaljob,
employees.EMAIL
FROM job_history AS job_history 
INNER JOIN employees AS employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
GROUP BY EMPLOYEE_ID 
HAVING employees.email = email) AS tt
INTO total;
RETURN TOTAL;
END $$
DELIMITER ;

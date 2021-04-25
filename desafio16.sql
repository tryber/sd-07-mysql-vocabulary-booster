DELIMITER $$ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(user_email VARCHAR(50)) RETURNS INT READS SQL DATA BEGIN
DECLARE jobs_quantity INT;
SELECT COUNT(*)
FROM employees
  JOIN job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE EMAIL = user_email INTO jobs_quantity;
RETURN jobs_quantity;
END $$ DELIMITER;

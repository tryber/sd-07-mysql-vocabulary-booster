USE hr;
DELIMITER $$ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_to_search VARCHAR(255)) RETURNS INT READS SQL DATA BEGIN
DECLARE number_of_jobs INT;
DECLARE employee_id INT;
SELECT hr.employees.EMPLOYEE_ID
FROM hr.employees
WHERE hr.employees.EMAIL = email_to_search INTO employee_id;
SELECT COUNT(*)
FROM hr.job_history
WHERE hr.job_history.EMPLOYEE_ID = employee_id INTO number_of_jobs;
RETURN number_of_jobs;
END $$ DELIMITER;

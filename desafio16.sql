DELIMITER $$
CREATE FUNCTION qtdjobs_byemployee(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE number_jobs INT;
SELECT COUNT(*)
FROM hr.employees AS employee
INNER JOIN hr.job_history AS jobhist ON jobhist.EMPLOYEE_ID = employee.EMPLOYEE_ID
WHERE employee.EMAIL = email INTO number_jobs;
RETURN number_jobs;
END $$
DELIMITER ;

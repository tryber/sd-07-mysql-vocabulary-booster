USE hr;
DELIMITER $$

CREATE function buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE totalJobs INT;
	SELECT COUNT(*)
    FROM hr.employees AS E
    INNER JOIN hr.job_history AS JH
    ON E.employee_id = JH.employee_id
    WHERE E.email = email
    INTO totalJobs;
    RETURN totalJobs; 
END $$
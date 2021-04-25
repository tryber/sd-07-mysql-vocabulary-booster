DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobsQuantidade INT;
SELECT COUNT(*)
FROM hr.employees AS emp
INNER JOIN hr.job_history as his
ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO jobsQuantidade;
RETURN jobsQuantidade;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");

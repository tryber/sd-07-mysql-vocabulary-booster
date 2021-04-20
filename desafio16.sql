USE hr; 
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(250))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT
(SELECT COUNT(*) FROM job_history WHERE emp.EMPLOYEE_ID = EMPLOYEE_ID)
FROM employees AS emp
WHERE emp.EMAIL = email
INTO total_empregos;
RETURN total_empregos;
END $$
DELIMITER ;

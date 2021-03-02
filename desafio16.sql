DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE emp INT;
SELECT COUNT(E.EMPLOYEE_ID) AS total_empregos
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE E.EMAIL = email
INTO emp;
RETURN emp;
END $$
DELIMITER $$
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS total_empregos;

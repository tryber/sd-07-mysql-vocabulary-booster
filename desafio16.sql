USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidadeDeEmpregos INT;
SELECT 
COUNT(*)
FROM
job_history AS t1
INNER JOIN
employees AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE
t2.EMAIL = email INTO quantidadeDeEmpregos;
RETURN quantidadeDeEmpregos;
END $$
DELIMITER ;

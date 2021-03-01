USE hr;
DELIMITER &&

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidadeDeEmpregosPorFuncionario INT;
SELECT COUNT(JH.EMPLOYEE_ID)
FROM hr.job_history AS JH, hr.employees AS E
WHERE E.EMPLOYEE_ID=JH.EMPLOYEE_ID AND E.EMAIL=email
INTO quantidadeDeEmpregosPorFuncionario;
RETURN quantidadeDeEmpregosPorFuncionario;
END &&

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS total_empregos;

DELIMITER $
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(srchEmail VARCHAR(30))
RETURNS INT DETERMINISTIC
BEGIN
DECLARE TOTAL INT;
SELECT COUNT(*) INTO TOTAL 
FROM employees E
INNER JOIN job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE email = srchEmail;
RETURN TOTAL;
END
$
DELIMITER ;

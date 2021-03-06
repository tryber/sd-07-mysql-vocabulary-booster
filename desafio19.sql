USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes DATE, ano DATE)
RETURNS INT READS SQL DATA
BEGIN
DECLARE employeeCount INT;
SELECT COUNT(*) FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND
YEAR(HIRE_DATE) = ano
INTO employeeCount;
RETURN employeeCount;
END $$

DELIMITER ;

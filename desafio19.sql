USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(monthIn int, yearIn int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE employeesNumber int;
SELECT COUNT(*) FROM hr.employees
WHERE MONTH(HIRE_DATE) =  monthIn AND YEAR(HIRE_DATE) = yearIn
INTO employeesNumber;
RETURN employeesNumber;
END $$

DELIMITER;

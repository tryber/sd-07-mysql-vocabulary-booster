USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(monthParam INT, yearParam INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalHiring INT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = monthParam AND YEAR(HIRE_DATE) = yearParam 
INTO totalHiring;
RETURN totalHiring;
END $$
DELIMITER ;

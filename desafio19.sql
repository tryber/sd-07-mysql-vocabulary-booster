USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(MES INT, ANO INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtyEmployeesHired INT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.employees
WHERE MES = MONTH(HIRE_DATE) AND ANO = YEAR(HIRE_DATE)
INTO qtyEmployeesHired;
RETURN qtyEmployeesHired;
END $$

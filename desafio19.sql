DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_hired INT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes
AND YEAR(HIRE_DATE) = ano  INTO qnt_hired;
RETURN qnt_hired;
END $$

DELIMITER ;

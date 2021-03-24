DELIMITER $
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (P_month INT, P_year INT)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE hireQuantity INT;
SELECT COUNT(EMPLOYEE_ID) INTO hireQuantity
FROM employees
WHERE MONTH(HIRE_DATE) = P_month 
AND YEAR(HIRE_DATE) = P_year;
RETURN hireQuantity;
END
$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS `Total`;

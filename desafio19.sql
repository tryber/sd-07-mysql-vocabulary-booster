USE hr; 
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes_param INT, ano_param INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_pessoas_contratadas INT;
SELECT COUNT(EMPLOYEE_ID) AS `total`
FROM employees
WHERE MONTH(HIRE_DATE) = mes_param
AND YEAR(HIRE_DATE) = ano_param
INTO quantidade_de_pessoas_contratadas;
RETURN quantidade_de_pessoas_contratadas;
END $$

DELIMITER ;

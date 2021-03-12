USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_people INT;
SELECT COUNT(*)
FROM hr.employees AS e
WHERE mes = MONTH(HIRE_DATE) AND ano = YEAR(HIRE_DATE) INTO hired_people;
RETURN hired_people;
END $$
DELIMITER;

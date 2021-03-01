USE hr
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(set_month INT, set_year INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_hired INT;
  SELECT COUNT(*)
  FROM employees
  WHERE MONTH(hire_date) = set_month AND YEAR(hire_date) = set_year
  INTO total_hired;
  RETURN total_hired;
END $$
DELIMITER ;

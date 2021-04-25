-- Desafio 16
-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email 
-- de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Use o banco hr como referência
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".
USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_to_find VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE ID_TO_FIND VARCHAR(100);
DECLARE QUANTITY INT;

SELECT EMPLOYEE_ID
FROM employees
WHERE
email = email_to_find
INTO ID_TO_FIND;
  
SELECT COUNT(*)
FROM job_history
WHERE
EMPLOYEE_ID = ID_TO_FIND
INTO QUANTITY;
  
RETURN QUANTITY;
END $$

DELIMITER ;

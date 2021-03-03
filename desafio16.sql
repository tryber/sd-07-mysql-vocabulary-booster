-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Use o banco hr como referência
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".
USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
  SELECT COUNT(*) AS total_empregos
  FROM job_history
  JOIN employees
  ON job_history.employee_id = employees.employee_id
  WHERE employees.email = email
  GROUP BY job_history.employee_id INTO quantidade;
  RETURN quantidade;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR") AS total_empregos;

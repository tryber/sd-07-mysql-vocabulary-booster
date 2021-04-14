USE hr; -- obrigatório para criar a função no banco correto
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	declare numberOfJobs INT;
	select count(jh.EMPLOYEE_ID) into numberOfJobs
		from hr.employees as e
		inner join hr.job_history as jh
		on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
		where e.EMAIL = email;
    return numberOfJobs;
END $$

DELIMITER ;

-- Tem que trocar o "as" por "into" porque a como dito abaixo: "doesn't set the variable c1, it returns a set with a column named c1" 
-- https://stackoverflow.com/questions/11880306/why-mysql-is-giving-error-not-allowed-to-return-a-result-set-from-a-function

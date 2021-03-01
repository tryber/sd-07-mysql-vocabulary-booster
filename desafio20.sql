USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_parameter VARCHAR (50))
BEGIN
SELECT CONCAT(E.first_name,' ',E.last_name) AS 'Nome completo',
D.department_name AS Departamento,
J.job_title AS Cargo
FROM hr.employees AS E
INNER JOIN hr.job_history AS H
ON E.employee_id = H.employee_id
INNER JOIN hr.departments as D
ON D.department_id = H.department_id
INNER JOIN hr.jobs AS J
ON J.job_id = H.job_id
WHERE EMAIL LIKE email_parameter
ORDER BY Departamento ASC, Cargo ASC;
END $$
DELIMITER ;

call exibir_historico_completo_por_funcionario('NKOCHHAR');

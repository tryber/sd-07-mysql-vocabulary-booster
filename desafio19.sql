DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(25))
BEGIN
	SELECT
		CONCAT(FIRST_NAME,' ',LAST_NAME) AS 'Nome completo',
		D.DEPARTMENT_NAME AS 'Departamento',
		J.JOB_TITLE AS 'Cargo'
	FROM hr.job_history H
	JOIN hr.employees E ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
	JOIN hr.departments D ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
	JOIN hr.jobs J ON H.JOB_ID = J.JOB_ID
	WHERE E.EMAIL = email
    ORDER BY CONCAT(FIRST_NAME,' ',LAST_NAME), J.JOB_TITLE;
END
$$
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(50))
BEGIN
SELECT CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME) AS "Nome completo",
dep.DEPARTMENT_NAME AS "Departamento", 
job.JOB_TITLE AS "Cargo"
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobH
ON jobH.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
ON jobH.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS dep
ON jobH.DEPARTMENT_ID = dep.DEPARTMENT_ID
WHERE emp.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;

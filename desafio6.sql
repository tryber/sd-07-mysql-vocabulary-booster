SELECT CONCAT(he.FIRST_NAME,' ', he.LAST_NAME) AS 'Nome Completo', hj.JOB_TITLE as 'Cargo',
hjh.START_DATE AS 'Data de início do cargo', hd.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees he
INNER JOIN hr.job_history hjh ON he.EMPLOYEE_ID = hjh.EMPLOYEE_ID
INNER JOIN hr.jobs hj ON hjh.JOB_ID = hj.JOB_ID
INNER JOIN hr.departments hd ON hjh.DEPARTMENT_ID = hd.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;

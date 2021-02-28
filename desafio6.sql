SELECT
CONCAT(E.FIRST_NAME, ' ',E.LAST_NAME) 'Nome completo',
J.JOB_TITLE Cargo,
JH.START_DATE 'Data de início do cargo',
D.DEPARTMENT_NAME Departamento
FROM hr.jobs J, hr.employees E, hr.departments D, hr.job_history JH
WHERE D.DEPARTMENT_ID=E.DEPARTMENT_ID
AND JH.EMPLOYEE_ID=E.EMPLOYEE_ID AND J.JOB_ID=JH.JOB_ID
ORDER BY `Nome completo` DESC, Cargo;

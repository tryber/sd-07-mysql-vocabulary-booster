SELECT 
    CONCAT(employees.FIRST_NAME,
            ' ',
            employees.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    histor.START_DATE AS 'Data de início do cargo',
    departments.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS histor
        INNER JOIN
    hr.jobs AS job ON histor.JOB_ID = job.JOB_ID
        INNER JOIN
    hr.employees AS employees ON histor.EMPLOYEE_id = employees.EMPLOYEE_ID
        INNER JOIN
    hr.departments AS departments ON histor.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;

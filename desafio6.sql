SELECT 
    CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) AS `Nome completo`,
    job.JOB_TITLE AS `Cargo`,
    history.START_DATE AS `Data de início do cargo`,
    department.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.job_history AS history
        INNER JOIN
    hr.employees AS employ ON employ.EMPLOYEE_ID = history.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS job ON job.JOB_ID = history.JOB_ID
        INNER JOIN
    hr.departments AS department ON department.DEPARTMENT_ID = history.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC;

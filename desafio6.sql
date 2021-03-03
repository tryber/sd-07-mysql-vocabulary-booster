SELECT 
    CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo`,
    t2.JOB_TITLE AS Cargo,
    t4.START_DATE AS `Data de início do cargo`,
    t3.DEPARTMENT_NAME AS Departamento
FROM
    hr.employees AS t1
        INNER JOIN
    hr.job_history AS t4 ON t1.EMPLOYEE_ID = t4.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS t2 ON t4.JOB_ID = t2.JOB_ID
        INNER JOIN
    hr.departments AS t3 ON t4.DEPARTMENT_ID = t3.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;

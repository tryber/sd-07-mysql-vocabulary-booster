SELECT 
    CONCAT(EMPLOYEES.FIRST_NAME, " ", EMPLOYEES.LAST_NAME) AS "Nome completo",
    JOBS.JOB_TITLE AS Cargo,
    JOB_HIST.START_DATE AS "Data de início do cargo",
    DEPARTMENTS.DEPARTMENT_NAME AS Departamento
FROM
    hr.employees AS EMPLOYEES
        INNER JOIN
    hr.job_history AS JOB_HIST ON EMPLOYEES.EMPLOYEE_ID = JOB_HIST.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS JOBS ON JOB_HIST.JOB_ID = JOBS.JOB_ID
        INNER JOIN
    hr.departments AS DEPARTMENTS ON JOB_HIST.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;

-- Referência: https://github.com/tryber/sd-07-mysql-vocabulary-booster/blob/ANDREHORMAN-MySQL-Vocabulary-Booster/desafio6.sql-- 

SELECT
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    J.JOB_TITLE AS `Cargo`,
    JH.START_DATE AS `Data de início do cargo`,
    D.DEPARTMENT_NAME AS `Departamento`
FROM job_history JH
    INNER JOIN jobs J
      ON JH.JOB_ID = J.JOB_ID
    INNER JOIN departments D
      ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
    INNER JOIN employees E
      ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, `Cargo`;

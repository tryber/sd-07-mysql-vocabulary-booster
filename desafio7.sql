SELECT
CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME) AS "Nome completo",
START_DATE AS "Data de início",
employees.SALARY AS "Salário"
FROM hr.job_history
INNER JOIN employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN ("1", "2", "3")
ORDER BY 1 ASC, 2 ASC;

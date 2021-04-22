SELECT UCASE(CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME)) AS "Nome completo",
historyjob.START_DATE AS "Data de início",
employees.SALARY AS "Salário"
FROM hr.employees AS employees
INNER JOIN hr.job_history AS historyjob
ON employees.EMPLOYEE_ID = historyjob.EMPLOYEE_ID
WHERE
  MONTH(historyjob.START_DATE) IN (1, 2, 3)
ORDER BY 
  CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME) ASC,
  historyjob.START_DATE ASC

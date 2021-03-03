SELECT
UCASE(CONCAT(emp.FIRST_NAME, " ", emp.LAST_NAME)) AS `Nome completo`,
his.START_DATE AS `Data de início`,
emp.SALARY AS `Salário`
FROM hr.employees AS emp
INNER JOIN hr.job_history AS his
ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Data de início` ASC;

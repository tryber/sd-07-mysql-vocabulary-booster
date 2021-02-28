-- SELECT hr.jobs.JOB_TITLE AS Cargo, ROUND(AVG(hr.employees.SALARY),2)
-- AS 'Média Salarial',
-- CASE
-- WHEN ROUND(AVG(hr.employees.SALARY),2) BETWEEN 2000.00 AND 5800.00 THEN "Júnior"
-- WHEN ROUND(AVG(hr.employees.SALARY),2) BETWEEN 5801.00 AND 7500.00 THEN 'Pleno'
-- WHEN ROUND(AVG(hr.employees.SALARY),2) BETWEEN 7501.00 AND 10500.00 THEN 'Sênior'
-- WHEN ROUND(AVG(hr.employees.SALARY),2) > 10500.00 THEN 'CEO'
-- END AS Senioridade
-- FROM hr.jobs
-- JOIN hr.employees
-- ON hr.jobs.JOB_ID = hr.employees.JOB_ID 
-- GROUP BY Cargo
-- ORDER BY 
-- 'Média Salarial',
-- Cargo;
SELECT JOB_TITLE AS Cargo,
(SELECT ROUND(AVG(SALARY),2) 
FROM hr.employees 
WHERE employees.JOB_ID = jobs.JOB_ID)
AS `Média Salarial`,
CASE
WHEN 'Média Salarial' BETWEEN 2000.00 AND 5800.00 THEN 'Júnior'
WHEN 'Média Salarial' BETWEEN 5801.00 AND 7500.00 THEN 'Pleno'
WHEN 'Média Salarial' BETWEEN 7501.00 AND 10500.00 THEN 'Sênior'
WHEN 'Média Salarial' > 10500.00 THEN 'CEO'
END AS Senioridade
FROM hr.jobs
ORDER BY `Média Salarial`, Cargo;

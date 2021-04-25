SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS 'Nome completo',
  JOB_TITLE AS 'Cargo',
  START_DATE AS 'Data de início do cargo',
  DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS j_h
  INNER JOIN hr.jobs AS j ON j_h.JOB_ID = j.JOB_ID
  JOIN hr.employees AS e ON j_h.EMPLOYEE_ID = e.EMPLOYEE_ID
  JOIN hr.departments AS d ON j_h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC,
  `Cargo`;

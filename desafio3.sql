SELECT
JOB_TITLE as Cargo,
(MAX_SALARY-MIN_SALARY) as `Diferença entre salários máximo e mínimo`
from jobs
ORDER BY (MAX_SALARY-MIN_SALARY) ASC, JOB_TITLE

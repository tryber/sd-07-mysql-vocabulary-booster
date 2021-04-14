-- db hr
-- Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo.
-- Use o banco hr como referência
-- Suponha que haja somente 03 pessoas funcionárias, João, Maria e Alex, e:
-- João e Maria possuem o mesmo cargo;
-- Alex não tem outra pessoa funcionária com o mesmo cargo.
-- Logo, podemos dizer que João tem uma pessoa funcionária associada, Maria, que possui o mesmo cargo. Também podemos dizer que Maria tem uma pessoa funcionária associada, João, que possui o mesmo cargo. Já Alex não tem outra pessoa funcionária associada com o mesmo cargo. Portanto, seu relatório deveria ter dois resultados, um indicando que Maria tem uma pessoa associada João que possui o mesmo cargo, e o outro resultado indicando que João tem uma pessoa associada Maria que possui o mesmo cargo.
-- Monte uma query que exiba 06 colunas:
-- A primeira deve possuir o alias "Nome completo funcionário 1" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- CONCAT(employees.first_name, ' ', employees.last_name) AS "Nome completo funcionário 1",
-- A segunda deve possuir o alias "Salário funcionário 1" e exibir o salário dessa pessoa.
-- employees.salary AS "Salário funcionário 1",
-- A terceira deve possuir o alias "Telefone funcionário 1" e exibir o número de telefone dessa pessoa.
-- employees.phone_number AS "Telefone funcionário 1",
-- A quarta deve possuir o alias "Nome completo funcionário 2" e exibir o nome completo da pessoa funcionária associada que possui o mesmo cargo (não se esqueça do espaço entre o nome e o sobrenome).
-- A quinta deve possuir o alias "Salário funcionário 2" e exibir o salário da pessoa funcionária associada que possui o mesmo cargo.
-- A sexta deve possuir o alias "Telefone funcionário 2" e exibir o número da pessoa funcionária associada que possui o mesmo cargo.
-- Os resultados devem estar ordenados pela coluna "Nome completo funcionário 1" em ordem alfabética.
-- ORDER BY `Nome completo funcionário 1`
-- Em caso de empate, os resultados devem ser ordenados pela coluna Nome completo funcionário 2" em ordem alfabética.
-- ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
-- jobs              employees                   job_history             departments
--                   employee_id-----------------employee_id
-- job_id------------job_id-----------------------job_id
--                   department_id---------------department_id------------department_id
--                                               start_date
-- job_title
--                   *first_name
--                   *last_name
--                   *salary
--                   *phone_number
SELECT 
  CONCAT(em.first_name, ' ', em.last_name) AS "Nome completo funcionário 1",
  em.salary AS "Salário funcionário 1",
  em.phone_number AS "Telefone funcionário 1",
  CONCAT(employees2.first_name, ' ', employees2.last_name) AS "Nome completo funcionário 2",
  employees2.salary AS "Salário funcionário 2",
  employees2.phone_number AS "Telefone funcionário 2"
FROM employees AS em, employees AS  employees2
WHERE em.job_id = employees2.job_id AND em.employee_id <> employees2.employee_id
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

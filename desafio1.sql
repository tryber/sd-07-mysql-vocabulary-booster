select country_name as País, IF(region_id = 1, 'incluído', 'não incluído') as 'Status Inclusão' from hr.countries
order by País;

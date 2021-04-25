select
c.COUNTRY_NAME as 'País',
if(r.REGION_NAME = 'Europe', 'incluído', 'não incluído') as 'Status Inclusão'
from hr.countries c
left join hr.regions r on r.REGION_ID = c.REGION_ID
order by c.COUNTRY_NAME;

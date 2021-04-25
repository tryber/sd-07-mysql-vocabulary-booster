select country.COUNTRY_NAME as 'País',
if(region.REGION_NAME = 'Europe', 'incluído', 'não incluído') as 'Status Inclusão'
from hr.countries as country
inner join hr.regions as region
on country.REGION_ID = region.REGION_ID
order by country.COUNTRY_NAME;

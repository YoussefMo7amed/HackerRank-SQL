select distinct city
from station
where (right(city,1) not in ( 'a', 'e', 'i', 'o', 'u'))
/*
-- Or you can use this:
select DISTINCT city from STATION where city NOT REGEXP '[aeiou]$'

*/

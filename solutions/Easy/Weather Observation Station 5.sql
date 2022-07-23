select city, CHAR_LENGTH(city) from station
where CHAR_LENGTH(city) = ( select max(CHAR_LENGTH(city)) from station) or  CHAR_LENGTH(city) = ( select min(CHAR_LENGTH(city)) from station)
order by char_length(city) desc , city
limit 2
/*order by  CHAR_LENGTH(city) desc*/

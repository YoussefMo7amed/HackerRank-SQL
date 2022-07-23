select name
from students
where marks > 75
order by right(name, 3) , id
/*
-- Or
select name
from students
where marks>75
order by substr(name,length(name)-2, 3) , id
*/

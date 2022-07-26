select concat(name, '(',substr(occupation,1,1),')') as output
    from occupations
union
select  concat('There are a total of ',count(name),' ', lower(occupation),'s.') as output
    from occupations
    group by occupation
order by output


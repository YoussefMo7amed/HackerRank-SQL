SELECT
    sum(city.population)
FROM
    city
    INNER JOIN country ON city.countrycode = country.code
WHERE
    continent = 'Asia'
with average_without_zero AS(
    SELECT
        AVG(withoutZero) AS avg_
    FROM
        (
            SELECT
                CAST(
                    replace(CAST(salary AS CHAR(6)), '0', '') AS SIGNED
                ) AS withoutZero
            FROM
                EMPLOYEES
        ) sub
)
SELECT
    CEIL(
        AVG(salary) - (
            SELECT
                avg_
            FROM
                average_without_zero
        )
    )
FROM
    EMPLOYEES
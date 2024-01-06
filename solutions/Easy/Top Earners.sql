select
    mx,
    (
        select
            count(1)
        from
            employee
        where
            salary * months = mx
    )
from
    (
        select
            max(salary * months) as mx
        from
            employee
    ) sub
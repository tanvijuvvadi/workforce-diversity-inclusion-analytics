SELECT
    COUNT(*) AS total_employees,

    SUM(
        CASE
            WHEN internal_mobility = 'Yes'
            THEN 1 ELSE 0
        END
    ) AS employees_with_internal_mobility,

    ROUND(
        SUM(
            CASE
                WHEN internal_mobility = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS internal_mobility_rate

FROM workforce_diversity;
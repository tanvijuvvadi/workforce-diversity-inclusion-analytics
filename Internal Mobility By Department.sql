SELECT
    department,

    SUM(
        CASE
            WHEN internal_mobility = 'Yes'
            THEN 1 ELSE 0
        END
    ) AS internal_moves,

    COUNT(*) AS total_employees,

    ROUND(
        SUM(
            CASE
                WHEN internal_mobility = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS mobility_rate

FROM workforce_diversity
GROUP BY department
ORDER BY mobility_rate DESC;
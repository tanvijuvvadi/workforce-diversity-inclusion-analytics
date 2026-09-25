SELECT
    department,
    COUNT(*) AS employees,
    ROUND(AVG(training_hours),2) AS average_training_hours,

    ROUND(
        SUM(
            CASE
                WHEN training_hours > 0
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS participation_rate

FROM workforce_diversity
GROUP BY department
ORDER BY participation_rate DESC;
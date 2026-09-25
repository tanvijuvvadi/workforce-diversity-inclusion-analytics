SELECT
    salary_band,
    COUNT(*) AS employee_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM workforce_diversity),
        2
    ) AS percentage

FROM workforce_diversity
GROUP BY salary_band
ORDER BY
    CASE salary_band
        WHEN '3-6 LPA' THEN 1
        WHEN '6-10 LPA' THEN 2
        WHEN '10-15 LPA' THEN 3
        WHEN '15-20 LPA' THEN 4
        WHEN '20-30 LPA' THEN 5
        WHEN '30+ LPA' THEN 6
    END;
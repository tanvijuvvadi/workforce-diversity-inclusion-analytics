SELECT
    gender_category,
    job_level,
    COUNT(*) AS employee_count,

    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (PARTITION BY job_level),
        2
    ) AS level_representation

FROM workforce_diversity
GROUP BY gender_category, job_level
ORDER BY job_level, employee_count DESC;
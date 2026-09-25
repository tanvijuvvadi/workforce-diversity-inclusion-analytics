SELECT
    job_level,
    gender_category,
    COUNT(*) AS employee_count,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (PARTITION BY job_level),
        2
    ) AS representation_percentage
FROM workforce_diversity
GROUP BY job_level, gender_category
ORDER BY
    CASE job_level
        WHEN 'Entry Level' THEN 1
        WHEN 'Junior' THEN 2
        WHEN 'Mid-Level' THEN 3
        WHEN 'Senior' THEN 4
        WHEN 'Manager' THEN 5
        WHEN 'Senior Manager' THEN 6
        WHEN 'Director' THEN 7
    END,
    representation_percentage DESC;
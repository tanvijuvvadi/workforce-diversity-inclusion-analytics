SELECT
    job_level,
    COUNT(*) AS employee_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM workforce_diversity),
        2
    ) AS representation_percentage
FROM workforce_diversity
GROUP BY job_level
ORDER BY
    CASE job_level
        WHEN 'Entry Level' THEN 1
        WHEN 'Junior' THEN 2
        WHEN 'Mid-Level' THEN 3
        WHEN 'Senior' THEN 4
        WHEN 'Manager' THEN 5
        WHEN 'Senior Manager' THEN 6
        WHEN 'Director' THEN 7
    END;
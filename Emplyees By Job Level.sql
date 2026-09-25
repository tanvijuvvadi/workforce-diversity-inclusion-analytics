SELECT
    job_level,
    COUNT(*) AS employee_count
FROM workforce_diversity
GROUP BY job_level
ORDER BY employee_count DESC;
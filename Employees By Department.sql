SELECT
    department,
    COUNT(*) AS employee_count
FROM workforce_diversity
GROUP BY department
ORDER BY employee_count DESC;
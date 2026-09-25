SELECT
    location,
    COUNT(*) AS employee_count
FROM workforce_diversity
GROUP BY location
ORDER BY employee_count DESC;
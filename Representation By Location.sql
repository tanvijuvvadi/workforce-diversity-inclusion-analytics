SELECT
    location,
    COUNT(*) AS employee_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM workforce_diversity),
        2
    ) AS representation_percentage
FROM workforce_diversity
GROUP BY location
ORDER BY employee_count DESC;
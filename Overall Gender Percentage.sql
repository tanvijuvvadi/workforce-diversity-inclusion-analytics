SELECT
    gender_category,
    COUNT(*) AS employee_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM workforce_diversity),
        2
    ) AS representation_percentage
FROM workforce_diversity
GROUP BY gender_category
ORDER BY representation_percentage DESC;
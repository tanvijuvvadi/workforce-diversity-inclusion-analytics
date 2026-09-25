SELECT
    gender_category,
    COUNT(*) AS employee_count
FROM workforce_diversity
GROUP BY gender_category
ORDER BY employee_count DESC;
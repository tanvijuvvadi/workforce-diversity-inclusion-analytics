SELECT
    department,
    gender_category,
    COUNT(*) AS employee_count,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (PARTITION BY department),
        2
    ) AS department_representation_percentage
FROM workforce_diversity
GROUP BY department, gender_category
ORDER BY department, department_representation_percentage DESC;
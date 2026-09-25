SELECT
    age_band,
    COUNT(*) AS employee_count
FROM workforce_diversity
GROUP BY age_band
ORDER BY employee_count DESC;
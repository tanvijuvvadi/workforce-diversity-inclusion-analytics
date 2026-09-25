SELECT
    gender_category,
    COUNT(*) AS leadership_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*)
         FROM workforce_diversity
         WHERE leadership_position = 'Yes'),
        2
    ) AS leadership_gender_representation
FROM workforce_diversity
WHERE leadership_position = 'Yes'
GROUP BY gender_category
ORDER BY leadership_gender_representation DESC;
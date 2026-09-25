SELECT
    ROUND(
        SUM(CASE WHEN leadership_position = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS leadership_representation_percentage
FROM workforce_diversity;
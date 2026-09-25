SELECT
    attrition_type,
    COUNT(*) AS attrition_count,

    ROUND(
        COUNT(*) * 100.0 /
        (
            SELECT COUNT(*)
            FROM workforce_diversity
            WHERE attrition_status = 'Yes'
        ),
        2
    ) AS percentage_of_attrition

FROM workforce_diversity
WHERE attrition_status = 'Yes'
GROUP BY attrition_type;
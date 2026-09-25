SELECT
    ROUND(
        SUM(
            CASE
                WHEN attrition_status = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM workforce_diversity;
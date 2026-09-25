SELECT
    tenure_band,

    COUNT(*) AS employee_count,

    SUM(
        CASE
            WHEN attrition_status = 'Yes'
            THEN 1 ELSE 0
        END
    ) AS attrition_count,

    ROUND(
        SUM(
            CASE
                WHEN attrition_status = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate

FROM workforce_diversity
GROUP BY tenure_band
ORDER BY attrition_rate DESC;
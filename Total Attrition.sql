SELECT
    COUNT(*) AS total_employees,

    SUM(
        CASE
            WHEN attrition_status = 'Yes'
            THEN 1 ELSE 0
        END
    ) AS attrition_count

FROM workforce_diversity;
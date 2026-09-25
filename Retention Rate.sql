SELECT
    ROUND(
        100 -
        (
            SUM(
                CASE
                    WHEN attrition_status = 'Yes'
                    THEN 1 ELSE 0
                END
            ) * 100.0 / COUNT(*)
        ),
        2
    ) AS retention_proxy
FROM workforce_diversity;
SELECT
    ROUND(
        SUM(
            CASE
                WHEN promotion_status = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 /
        SUM(
            CASE
                WHEN promotion_eligibility = 'Yes'
                THEN 1 ELSE 0
            END
        ),
        2
    ) AS promotion_rate
FROM workforce_diversity;
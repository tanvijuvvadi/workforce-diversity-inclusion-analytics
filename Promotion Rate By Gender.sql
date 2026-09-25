SELECT
    gender_category,

    SUM(
        CASE
            WHEN promotion_status = 'Yes'
            THEN 1 ELSE 0
        END
    ) AS promoted,

    SUM(
        CASE
            WHEN promotion_eligibility = 'Yes'
            THEN 1 ELSE 0
        END
    ) AS eligible,

    ROUND(
        SUM(
            CASE
                WHEN promotion_status = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 /
        NULLIF(
            SUM(
                CASE
                    WHEN promotion_eligibility = 'Yes'
                    THEN 1 ELSE 0
                END
            ),
            0
        ),
        2
    ) AS promotion_rate

FROM workforce_diversity
GROUP BY gender_category;
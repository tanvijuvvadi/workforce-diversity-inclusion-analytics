SELECT

    COUNT(*) AS total_headcount,

    ROUND(
        COUNT(*) * 100.0 /
        COUNT(*),
        2
    ) AS workforce_representation,

    ROUND(
        SUM(
            CASE
                WHEN leadership_position = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS leadership_representation,

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
    ) AS promotion_rate,

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
    ) AS retention_proxy,

    ROUND(AVG(inclusion_score),2) AS inclusion_score

FROM workforce_diversity;
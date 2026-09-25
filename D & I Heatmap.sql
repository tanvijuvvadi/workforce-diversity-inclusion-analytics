SELECT
    department,

    COUNT(*) AS headcount,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM workforce_diversity),
        2
    ) AS representation_percentage,

    ROUND(
        AVG(inclusion_score),
        2
    ) AS inclusion_score,

    ROUND(
        AVG(belonging_score),
        2
    ) AS belonging_score,

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
        SUM(
            CASE
                WHEN attrition_status = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate,

    ROUND(
        SUM(
            CASE
                WHEN leadership_position = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS leadership_representation

FROM workforce_diversity
GROUP BY department
ORDER BY department;
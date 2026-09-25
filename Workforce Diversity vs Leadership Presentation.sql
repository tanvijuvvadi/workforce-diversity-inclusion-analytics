SELECT
    gender_category,

    COUNT(*) AS total_workforce,

    SUM(
        CASE
            WHEN leadership_position = 'Yes'
            THEN 1 ELSE 0
        END
    ) AS leadership_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM workforce_diversity),
        2
    ) AS workforce_representation,

    ROUND(
        SUM(
            CASE
                WHEN leadership_position = 'Yes'
                THEN 1 ELSE 0
            END
        ) * 100.0 /
        (
            SELECT COUNT(*)
            FROM workforce_diversity
            WHERE leadership_position = 'Yes'
        ),
        2
    ) AS leadership_representation

FROM workforce_diversity
GROUP BY gender_category;
SELECT
    department,

    ROUND(AVG(engagement_score),2) AS avg_engagement,
    ROUND(AVG(inclusion_score),2) AS avg_inclusion,

    CASE
        WHEN AVG(engagement_score) >= 75
             AND AVG(inclusion_score) >= 75
            THEN 'Strong Experience'

        WHEN AVG(engagement_score) >= 75
             AND AVG(inclusion_score) < 75
            THEN 'Inclusion Review'

        WHEN AVG(engagement_score) < 75
             AND AVG(inclusion_score) >= 75
            THEN 'Engagement Review'

        ELSE 'Priority Investigation'
    END AS experience_category

FROM workforce_diversity
GROUP BY department;
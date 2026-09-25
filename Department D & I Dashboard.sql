SELECT
    department,

    COUNT(*) AS headcount,

    ROUND(AVG(engagement_score),2) AS engagement_score,

    ROUND(AVG(inclusion_score),2) AS inclusion_score,

    ROUND(AVG(belonging_score),2) AS belonging_score,

    ROUND(AVG(manager_support_score),2) AS manager_support,

    ROUND(AVG(psychological_safety_score),2) AS psychological_safety,

    ROUND(AVG(career_opportunity_score),2) AS career_opportunity,

    ROUND(AVG(training_hours),2) AS avg_training_hours,

    ROUND(AVG(annual_compensation_lpa),2) AS avg_compensation,

    ROUND(
        SUM(
            CASE WHEN leadership_position = 'Yes'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS leadership_representation,

    ROUND(
        SUM(
            CASE WHEN internal_mobility = 'Yes'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS internal_mobility_rate,

    ROUND(
        SUM(
            CASE WHEN attrition_status = 'Yes'
            THEN 1 ELSE 0 END
        ) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate

FROM workforce_diversity
GROUP BY department
ORDER BY department;
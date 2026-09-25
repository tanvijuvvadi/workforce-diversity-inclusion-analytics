SELECT
    ROUND(AVG(engagement_score),2) AS avg_engagement,
    ROUND(AVG(inclusion_score),2) AS avg_inclusion,
    ROUND(AVG(belonging_score),2) AS avg_belonging,
    ROUND(AVG(manager_support_score),2) AS avg_manager_support,
    ROUND(AVG(psychological_safety_score),2) AS avg_psychological_safety,
    ROUND(AVG(career_opportunity_score),2) AS avg_career_opportunity
FROM workforce_diversity;
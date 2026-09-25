SELECT
    department,
    ROUND(AVG(career_opportunity_score),2) AS career_opportunity_score
FROM workforce_diversity
GROUP BY department
ORDER BY career_opportunity_score DESC;
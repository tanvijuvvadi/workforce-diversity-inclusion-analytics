SELECT
    department,
    ROUND(AVG(psychological_safety_score),2) AS psychological_safety_score
FROM workforce_diversity
GROUP BY department
ORDER BY psychological_safety_score DESC;
SELECT
    department,
    ROUND(AVG(manager_support_score),2) AS manager_support_score
FROM workforce_diversity
GROUP BY department
ORDER BY manager_support_score DESC;
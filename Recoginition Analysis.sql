SELECT
    department,
    ROUND(AVG(recognition_count),2) AS average_recognition
FROM workforce_diversity
GROUP BY department
ORDER BY average_recognition DESC;
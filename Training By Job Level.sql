SELECT
    job_level,
    COUNT(*) AS employees,
    ROUND(AVG(training_hours),2) AS average_training_hours
FROM workforce_diversity
GROUP BY job_level
ORDER BY average_training_hours DESC;
SELECT
    review_period,
    COUNT(*) AS employee_count
FROM workforce_diversity
GROUP BY review_period
ORDER BY review_period;
SELECT
    COUNT(*) AS promoted_employees
FROM workforce_diversity
WHERE promotion_status = 'Yes';
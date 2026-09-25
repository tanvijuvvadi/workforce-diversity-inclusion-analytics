SELECT
    job_level,
    gender_category,
    COUNT(*) AS employee_count,
    ROUND(AVG(annual_compensation_lpa),2) AS average_compensation,
    ROUND(
        (
            SELECT AVG(w2.annual_compensation_lpa)
            FROM workforce_diversity w2
            WHERE w2.job_level = w.job_level
        ),
        2
    ) AS job_level_average_compensation

FROM workforce_diversity w
GROUP BY job_level, gender_category
ORDER BY job_level, gender_category;
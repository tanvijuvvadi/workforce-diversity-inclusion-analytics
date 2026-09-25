WITH ranked_salary AS (
    SELECT
        annual_compensation_lpa,
        ROW_NUMBER() OVER (
            ORDER BY annual_compensation_lpa
        ) AS rn,
        COUNT(*) OVER () AS total_rows
    FROM workforce_diversity
)

SELECT
    ROUND(AVG(annual_compensation_lpa),2) AS median_compensation_lpa
FROM ranked_salary
WHERE rn IN (
    FLOOR((total_rows + 1) / 2),
    CEIL((total_rows + 1) / 2)
);
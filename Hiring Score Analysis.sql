SELECT
    hiring_source,
    COUNT(*) AS hires,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM workforce_diversity),
        2
    ) AS hiring_representation

FROM workforce_diversity
GROUP BY hiring_source
ORDER BY hires DESC;
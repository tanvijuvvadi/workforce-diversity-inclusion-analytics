SELECT
    ROUND(
        (
            AVG(
                CASE
                    WHEN gender_category = 'Female'
                    THEN annual_compensation_lpa
                END
            )
            -
            AVG(
                CASE
                    WHEN gender_category = 'Male'
                    THEN annual_compensation_lpa
                END
            )
        )
        /
        NULLIF(
            AVG(
                CASE
                    WHEN gender_category = 'Male'
                    THEN annual_compensation_lpa
                END
            ),
            0
        ) * 100,
        2
    ) AS female_vs_male_compensation_gap_percentage

FROM workforce_diversity;
USE happy_sunny;

# DROP VIEW IF EXISTS all_avg;
# DROP VIEW IF EXISTS summary_top_and_last_ten;

########  Creating a view with all data for the happiest and unhappiest 10 countries  ##############################
CREATE VIEW summary_top_and_last_ten AS
WITH FirstTen AS (
    SELECT *
    FROM happy_sunny
    WHERE rank_number < 12
),
LastTen AS (
    SELECT * 
    FROM happy_sunny
    ORDER BY rank_number DESC
    LIMIT 10
)

SELECT *
FROM FirstTen

UNION ALL

SELECT *
FROM LastTen

ORDER BY rank_number;  

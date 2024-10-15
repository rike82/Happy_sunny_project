USE happy_sunny;



######################### calculates weights in percentage  ###############################################
CREATE VIEW all_avg AS
SELECT 
    AVG(happiness_score) AS avg_happiness,
    AVG(gdp_per_capita) / AVG(happiness_score) * 100 AS gdp_weighting,
    AVG(social_support) / AVG(happiness_score) * 100 AS social_support_weighting,
    AVG(healthy_life_expectancy) / AVG(happiness_score) * 100 AS life_expectancy_weighting,
    AVG(freedom_to_make_life_choices) / AVG(happiness_score) * 100 AS freedom_weighting,
    AVG(generosity) / AVG(happiness_score) * 100 AS generosity_weighting,
    AVG(perceptions_of_corruption) / AVG(happiness_score) * 100 AS corruption_weighting,
    AVG(dystopia) / AVG(happiness_score) * 100 AS dystopia_weighting
FROM happy_sunny;

######################### with rounding weights to int percentages  ###############################################
SELECT 
    AVG(happiness_score) AS avg_happiness,
    FLOOR(AVG(gdp_per_capita) / AVG(happiness_score) * 100) AS gdp_weighting,
    ROUND(AVG(social_support) / AVG(happiness_score) * 100) AS social_support_weighting,
    ROUND(AVG(healthy_life_expectancy) / AVG(happiness_score) * 100) AS life_expectancy_weighting,
    ROUND(AVG(freedom_to_make_life_choices) / AVG(happiness_score) * 100) AS freedom_weighting,
    ROUND(AVG(generosity) / AVG(happiness_score) * 100) AS generosity_weighting,
    ROUND(AVG(perceptions_of_corruption) / AVG(happiness_score) * 100) AS corruption_weighting,
    ROUND(AVG(dystopia) / AVG(happiness_score) * 100) AS dystopia_weighting
FROM happy_sunny;


SELECT * FROM all_avg;







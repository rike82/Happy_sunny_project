USE happy_sunny;

# Query for analysis of possible corelation happiness - sun
SELECT rank_number, country, dystopia, sunny_hours_per_year
FROM summary_top_and_last_ten
ORDER BY rank_number;

# group by continents, avg, to compare continents > didn't use that for further analysis after all
SELECT continent, ROUND(AVG(sunny_hours_per_year),2) AS avg_sunnyhours , ROUND(AVG(rank_number),2) AS avg_rank, 
					ROUND(AVG(dystopia),2) AS avg_dystopia
FROM happy_sunny
GROUP BY continent
ORDER BY AVG(rank_number);

SELECT continent, ROUND(AVG(sunny_hours_per_year),2) AS avg_sunnyhours , ROUND(AVG(rank_number),2) AS avg_rank, 
					ROUND(AVG(dystopia),2) AS avg_dystopia
FROM summary_top_and_last_ten
GROUP BY continent
ORDER BY AVG(rank_number);

SELECT rank_number, country, generosity, healthy_life_expectancy, sunny_hours_per_year
FROM summary_top_and_last_ten
ORDER BY rank_number;

# Vorschläge für zusätzliche Betrachtungen:

 #   Korrelationen analysieren: Es könnte sinnvoll sein, Korrelationen zwischen den einzelnen Faktoren (z.B. Sonnenscheinstunden
 # und Lebenszufriedenheit) zu untersuchen.
 #   Vergleiche zwischen Top- und Letzten-Ländern: Die Differenzen zwischen den Top- und Letzten-Ländern könnten 
 # interessante Erkenntnisse darüber liefern, welche Faktoren den größten Einfluss auf den happinessindex haben.
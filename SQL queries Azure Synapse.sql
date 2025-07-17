-- Query 1: Top 10 Countries by Total Medals
-- Shows the countries that have won the most medals overall.
SELECT TOP 10
    TeamCountry,
    Total AS TotalMedals,
    Gold,
    Silver,
    Bronze
FROM 
    dbo.Medals
ORDER BY 
    TotalMedals DESC;

-- Query 2: Top 10 Countries by Gold Medals
-- Ranks countries based on the number of gold medals won.
SELECT TOP 10
    TeamCountry,
    Gold,
    Total AS TotalMedals
FROM 
    dbo.Medals
ORDER BY 
    Gold DESC;

-- Query 3: Athlete Count per Country
-- Counts the number of athletes representing each country.
SELECT
    Country,
    COUNT(PersonName) AS NumberOfAthletes
FROM
    dbo.Athletes
GROUP BY
    Country
ORDER BY
    NumberOfAthletes DESC;

-- Query 4: Coach Count per Country
-- Counts the number of coaches for each country.
SELECT
    Country,
    COUNT(Name) AS NumberOfCoaches
FROM
    dbo.Coaches
GROUP BY
    Country
ORDER BY
    NumberOfCoaches DESC;

-- Query 5: Gender Distribution by Discipline
-- Shows the number of male and female participants for each discipline.
SELECT
    Discipline,
    Female,
    Male,
    Total
FROM
    dbo.EntriesGender
ORDER BY
    Total DESC;

Select continent, MAX(cast(total_deaths as int)) as TotalDeathCount
from dbo.coviddeaths
where continent <> ' '
group by continent
order by TotalDeathCount desc

-- NUMEROS GLOBALES

SELECT date as Fecha, SUM(new_cases) as TotalCases, SUM(cast(new_deaths as int)) as TotalDeaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
from dbo.coviddeaths
where continent <> ' '
group by date
order by 1,2



-- Total de gente vs total gente vacunada
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
from Portfolioproject.dbo.Coviddeaths dea
JOIN Portfolioproject..CovidVaccionatios vac on dea.location = vac.location and dea.date = vac.date
where dea.continent <> ' '
ORDER BY 1, 2, 3

select * from CovidVaccionatios

CREATE VIEW Globaldates as
SELECT date as Fecha, SUM(new_cases) as TotalCases, SUM(cast(new_deaths as int)) as TotalDeaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
from dbo.coviddeaths
where continent <> ' '
group by date



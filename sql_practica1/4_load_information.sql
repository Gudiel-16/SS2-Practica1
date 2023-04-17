USE Practica1SS2;
GO

/*CARGAR INFORMACION*/
INSERT INTO Country(
	name_country
)
SELECT DISTINCT country FROM TEMPORAL
ORDER BY country asc
;
GO

INSERT INTO Yearr(
	num_year
)
SELECT DISTINCT num_year FROM TEMPORAL
ORDER BY num_year asc
;
GO

INSERT INTO Tsunami(
	maximum_water_height,    
    total_deaths,
	total_damage,
	houses_destroyed,
	houses_damaged,
	id_country,
	id_year
)
(SELECT TEMPORAL.maximum_water_height, TEMPORAL.total_deaths, TEMPORAL.total_damage, TEMPORAL.houses_destroyed, TEMPORAL.houses_damaged,
	(SELECT TOP 1 id FROM Country WHERE TEMPORAL.country = Country.name_country),
	(SELECT TOP 1 id FROM Yearr WHERE TEMPORAL.num_year = Yearr.num_year)
FROM TEMPORAL);
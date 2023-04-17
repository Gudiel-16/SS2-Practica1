USE Practica1SS2;
GO
/*CONSULTA 5*/
SELECT TOP 5 Country.name_country pais, SUM(Tsunami.total_deaths) total_deaths FROM Country
INNER JOIN Tsunami ON Tsunami.id_country = Country.id
GROUP BY Country.name_country
ORDER BY total_deaths DESC;
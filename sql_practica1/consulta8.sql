USE Practica1SS2;
GO

/*CONSULA 8*/
SELECT TOP 5 Country.name_country pais, SUM(Tsunami.houses_destroyed) houses_destroyed FROM Country
INNER JOIN Tsunami ON Tsunami.id_country = Country.id
GROUP BY Country.name_country
ORDER BY houses_destroyed DESC;
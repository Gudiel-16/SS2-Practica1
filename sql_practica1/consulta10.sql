USE Practica1SS2;
GO

/*CONSULTA 10*/
SELECT Country.name_country pais, AVG(Tsunami.maximum_water_height) promedio_water FROM Country
INNER JOIN Tsunami ON Tsunami.id_country = Country.id
GROUP BY Country.name_country
ORDER BY promedio_water DESC;
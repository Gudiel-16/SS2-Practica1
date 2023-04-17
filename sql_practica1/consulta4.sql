USE Practica1SS2;
GO

/*CONSULTA 4*/
SELECT Country.name_country pais, AVG(Tsunami.total_damage) promedio_damage FROM Country
INNER JOIN Tsunami ON Tsunami.id_country = Country.id
GROUP BY Country.name_country
ORDER BY promedio_damage DESC;
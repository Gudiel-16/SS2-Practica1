USE Practica1SS2;
GO

/*CONSULTA 9*/
SELECT TOP 5 Country.name_country pais, SUM(Tsunami.houses_damaged) houses_damaged FROM Country
INNER JOIN Tsunami ON Tsunami.id_country = Country.id
GROUP BY Country.name_country
ORDER BY houses_damaged DESC;
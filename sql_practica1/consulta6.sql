USE Practica1SS2;
GO

/*CONSULTA 6*/
SELECT TOP 5 Yearr.num_year anio, SUM(Tsunami.total_deaths) total_deaths FROM Yearr
INNER JOIN Tsunami ON Tsunami.id_year = Yearr.id
GROUP BY Yearr.num_year
ORDER BY total_deaths DESC;
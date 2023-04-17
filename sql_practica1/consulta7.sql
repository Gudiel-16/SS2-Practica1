USE Practica1SS2;
GO

/*CONSULTA 7*/
SELECT TOP 5 Yearr.num_year anio, COUNT(Yearr.num_year) total_tsunamis FROM Yearr
INNER JOIN Tsunami ON Tsunami.id_year = Yearr.id
GROUP BY Yearr.num_year
ORDER BY total_tsunamis DESC;
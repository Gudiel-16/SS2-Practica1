USE Practica1SS2;
GO

/*CONSULTA 2*/
SELECT Yearr.num_year, Count(Tsunami.id) as "Tsunamis" FROM Tsunami
INNER JOIN Yearr ON Yearr.id = Tsunami.id_year
GROUP BY Yearr.num_year
ORDER BY Tsunamis desc;
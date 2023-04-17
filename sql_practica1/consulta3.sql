/*CONSULTA 3*/
USE Practica1SS2;
GO

DECLARE @columns varchar(MAX);
DECLARE @sql nvarchar(MAX);

SELECT @columns = STUFF(
(
SELECT
   ',' + QUOTENAME(LTRIM(num_year))
 FROM
   (SELECT DISTINCT num_year
    FROM Yearr
   ) AS T
ORDER BY
num_year
FOR XML PATH('')
), 1, 1, '');

SET @sql = N'

select *
from (
	SELECT Country.name_country pais, Yearr.num_year anio FROM Country
	INNER JOIN Tsunami ON Tsunami.id_country = Country.id
	INNER JOIN Yearr ON Yearr.id = Tsunami.id_year
) s
pivot (
	sum(anio)
	for [anio] in ('+ @columns + N')
) p ORDER BY p.pais;';

EXEC sp_executesql @sql;
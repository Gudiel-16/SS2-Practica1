USE Practica1SS2;
GO

/*EXTRAER INFORMACION*/
BULK INSERT
	TEMPORAL
from 
	'C:\Users\Christopher\Desktop\sql_practica1\p1_ss2.csv'
With(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n',
	FIRSTROW = 2
);
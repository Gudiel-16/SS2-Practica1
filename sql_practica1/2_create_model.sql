USE Practica1SS2;
GO

/*CREAR MODELO*/
CREATE TABLE TEMPORAL(
    num_year varchar(5),
    maximum_water_height varchar(10),
    total_deaths varchar(7),
	total_damage varchar(10),
	houses_destroyed varchar(10),
	houses_damaged varchar(10),
	country varchar(50)
);
GO

CREATE TABLE Country(
    id int IDENTITY(1,1) PRIMARY KEY,
    name_country varchar(50)
);
GO

CREATE TABLE Yearr(
    id int IDENTITY(1,1) PRIMARY KEY,
    num_year int
);
GO

CREATE TABLE Tsunami(
	id int IDENTITY(1,1) PRIMARY KEY,
	maximum_water_height decimal,    
    total_deaths int,
	total_damage decimal,
	houses_destroyed int,
	houses_damaged int,
	id_country int,
	id_year int,
	FOREIGN KEY (id_country) REFERENCES Country(Id),
	FOREIGN KEY (id_year) REFERENCES Yearr(id)
);
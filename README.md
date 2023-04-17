# Practica 1 - Proceso ETL

## Descripcion

Realizar un proceso de ETL (Extraer, Transformar, Cargar) del archivo brindado. En base al archivo usted deberá generar el modelo que se adapte mejor, y posteriormente, realizar las consultas que se le soliciten.

## Aplicacion

Se realizará una aplicación de consola en Python, la cual tendrá las siguientes opciones:

1. Borrar modelo: Se ejecutará un script y se borrará cualquier tabla que utilice para el desarrollo de la práctica.
2. Crear modelo: Se ejecutará el script de creación de las tablas del modelo que el estudiante haya desarrollado.
3. Extraer información: Se solicitará la ruta de los archivos de carga, para proceder a extraer la información de estos.
4. Cargar información: Se ejecutará un script que transforme la información de los archivos de entrada y luego se cargue al modelo desarrollado.
5. Realizar consultas: Ejecutará un script con las consultas solicitadas y guardará los resultados en un archivo de texto.

## Consultas

1. Debe mostrar un SELECT COUNT(*) de todas las tablas para ver que si realizo la carga en las tablas del modelo.
2. Cantidad de tsunamis por año.
3. Tsunamis por país y que se muestran los años que han tenido tsunamis de la siguiente forma:

| País | Año 1 | Año 2 |Año 3 |
| ------ | ------ | ------ | ------ |
|Guatemala | 1901 | 1902 | 1903 |

4. Promedio de Total Damage por país
5. Top 5 de países con más muertes
6. Top 5 de años con más muertes
7. Top 5 de años que más tsunamis han tenido
8. Top 5 de países con mayor número de casas destruidas
9. Top 5 de países con mayor número de casas dañadas
10. Promedio de altura máxima del agua por cada país.


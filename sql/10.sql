-- Listar el nombre de las fincas y el nombre de sus propietarios que tengan un cultivo de maiz

SELECT  f.nombre_finca, f.propietario, c.nombre_cultivo FROM Finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca
WHERE c.nombre_cultivo ='maiz';
-- Listar el nombre de las fincas y el nombre de sus propietarios que tengan un area mayor a 10000 m2

SELECT nombre_finca, propietario, tamanio_m2 FROM Finca
WHERE tamanio_m2 >=10000;
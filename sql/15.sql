--Realizar un query que muestre que cultivos tienen sensores de temperatura

 SELECT c.nombre_cultivo, s.nombre_sensor FROM Cultivos c
 INNER JOIN Sensores s ON c.id_cultivo=s.id_cultivo
 WHERE s.nombre_sensor='sensor temperatura';
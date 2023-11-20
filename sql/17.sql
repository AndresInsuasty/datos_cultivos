-- Realizar un query que muestre que cultivos tienen sensores de viento

SELECT c.nombre_cultivo,s.nombre_sensor FROM Cultivos c
INNER JOIN Sensores s ON c.id_cultivo=S.id_cultivo
WHERE S.nombre_sensor='sensor viento';
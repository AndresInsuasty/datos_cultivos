-- Cual es el promedio de temperatura medida por los sensores?

SELECT s.nombre_sensor, avg(ms.valor_medicion) AS promedio_medicion FROM Sensores s
INNER JOIN Medicion_sensores ms ON s.id_sensor=ms.id_sensor
WHERE s.nombre_sensor ='sensor temperatura';

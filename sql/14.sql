-- Cual es el promedio de humedad medida por los sensores?

SELECT s.nombre_sensor, avg(ms.valor_medicion) AS promedio_humedad FROM Sensores s
INNER JOIN Medicion_sensores ms ON s.id_sensor=ms.id_sensor
WHERE s.nombre_sensor ='sensor humedad';
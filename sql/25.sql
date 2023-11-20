-- Cual es el sensor que mas mediciones ha registrado?

SELECT s.id_sensor, count(ms.id_medicion_sensores) AS numero_mediciones, s.nombre_sensor FROM Medicion_sensores ms
INNER JOIN Sensores s ON s.id_sensor= ms.id_sensor
GROUP BY s.id_sensor 
ORDER by numero_mediciones DESC
limit 2;
-- En que fecha se presentó las mas alta temperatura?

SELECT s.nombre_sensor, ms.valor_medicion, strftime('%Y-%m-%d',ms.fecha_medicion) AS fecha_de_medicion FROM Medicion_sensores ms
INNER JOIN Sensores s ON s.id_sensor=ms.id_sensor
WHERE s.nombre_sensor='sensor temperatura'
ORDER BY ms.valor_medicion DESC, ms.fecha_medicion DESC
LIMIT 29;
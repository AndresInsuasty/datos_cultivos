--Que finca presentó la mas alta velocidad de viento y en que fecha fue esto?

SELECT f.nombre_finca, s.nombre_sensor, ms.valor_medicion, ms.fecha_medicion FROM Finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca
INNER JOIN Sensores s ON c.id_cultivo=s.id_cultivo
INNER JOIN Medicion_sensores ms ON s.id_sensor=ms.id_sensor
WHERE s.nombre_sensor='sensor viento'
ORDER BY ms.valor_medicion DESC
LIMIT 3;

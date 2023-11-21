--Que finca tiene la menor cantidad de mediciones?

SELECT f.nombre_finca, count(f.nombre_finca) AS veces_medicion FROM Finca f
INNER JOIN Cultivos c  ON f.id_finca=c.id_finca
INNER JOIN Sensores s ON c.id_cultivo=s.id_cultivo
INNER JOIN Medicion_sensores ms ON s.id_sensor=ms.id_sensor
GROUP BY f.nombre_finca
ORDER BY veces_medicion ASC
LIMIT 1;
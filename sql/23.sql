--cual es el promedio de temperatura para la finca "la fuente" entre los meses de enero y marzo?

SELECT f.id_finca, f.nombre_finca, avg(ms.valor_medicion) AS promedio_mediciones_de_temperatura FROM Finca f
INNER JOIN Cultivos c ON f.id_finca = c.id_finca
INNER JOIN Sensores s ON c.id_cultivo = s.id_cultivo
INNER JOIN Medicion_sensores ms ON s.id_sensor = ms.id_sensor
WHERE s.nombre_sensor = 'sensor temperatura'
AND f.nombre_finca='la fuente'
AND ms.fecha_medicion BETWEEN '2022-12-31' AND '2023-03-31';
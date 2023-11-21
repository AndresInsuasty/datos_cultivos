-- Cual es el promedio de temperatura para la finca "la fuente" entre los meses de agosto y octubre?

SELECT f.nombre_finca, avg(ms.valor_medicion) AS promedio_mediciones_de_temperatura FROM Finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca
INNER JOIN Sensores s ON c.id_cultivo=s.id_cultivo
INNER JOIN Medicion_sensores ms ON s.id_sensor=ms.id_sensor
WHERE f.nombre_finca="la fuente"
AND ms.fecha_medicion BETWEEN '2023-08-1' AND '2023-10-31';
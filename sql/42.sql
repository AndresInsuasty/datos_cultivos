--Muestre el promedio de las mediciones hechas para el cultivo que se vendió por ultima vez.

SELECT c.id_cultivo,c.nombre_cultivo, max(v.fecha_venta) as venta_ultima_vez, avg(ms.valor_medicion) AS promedio_mediciones_de_cultivo FROM Cultivos c
INNER JOIN Ventas v ON c.id_cultivo=v.id_cultivo
INNER JOIN Sensores s ON c.id_cultivo=s.id_cultivo
INNER JOIN Medicion_sensores ms ON s.id_sensor=ms.id_sensor
GROUP BY c.nombre_cultivo
ORDER BY venta_ultima_vez DESC
LIMIT 1;
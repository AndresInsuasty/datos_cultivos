--Que valor de medicion tiene el sensor 14 en la fecha 2023-04-20?

SELECT id_sensor, valor_medicion, strftime('%Y-%m-%d',fecha_medicion) AS fecha FROM Medicion_sensores
WHERE id_sensor=14
AND fecha='2023-04-20';
--En que mes se registraron la mayor cantidad de mediciones?

SELECT strftime('%m',fecha_medicion)AS mes, count(*) AS frecuencia FROM Medicion_sensores 
GROUP BY mes
ORDER BY frecuencia DESC
LIMIT 1;
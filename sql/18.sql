-- En que mes se compraron mas sensores? 	

SELECT strftime ('%m',fecha_compra) AS mes, count (*) AS cantidad_compras FROM Sensores
GROUP BY mes
ORDER BY cantidad_compras DESC
LIMIT 1;
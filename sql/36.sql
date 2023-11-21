--Que cultivo ha sido el que mas dinero ha generado en ventas?

SELECT c.nombre_cultivo, sum(v.valor_venta) AS mayor_ganancia FROM Cultivos c
INNER JOIN Ventas v ON c.id_cultivo=v.id_cultivo
GROUP BY c.nombre_cultivo
ORDER BY mayor_ganancia DESC
LIMIT 1;
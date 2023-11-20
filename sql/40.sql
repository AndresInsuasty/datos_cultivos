--Hay algun cultivo que no haya generado ventas?

SELECT v.id_cultivo, c.nombre_cultivo, v.valor_venta FROM Cultivos c
INNER JOIN Ventas v ON c.id_cultivo= v.id_cultivo
WHERE valor_venta =0;
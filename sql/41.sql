--Que cultivo se vendió por un valor de 5611329?

SELECT c.nombre_cultivo, v.valor_venta FROM Cultivos c
INNER JOIN Ventas v ON c.id_cultivo= v.id_cultivo
WHERE valor_venta =5611329;
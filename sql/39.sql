--En que fecha se registro la venta mas alta y a que propietario de finca le pertenece?

SELECT f.propietario, f.nombre_finca, c.nombre_cultivo, v.valor_venta, v.fecha_venta FROM finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca
INNER JOIN Ventas v ON c.id_cultivo=v.id_cultivo
ORDER BY valor_venta DESC
LIMIT 1;
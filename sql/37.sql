--Que finca ha sido la que mas dinero ha generado en ventas?

SELECT f.nombre_finca, sum(v.valor_venta) AS mayor_ganancia_en_ventas FROM Finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca
INNER JOIN Ventas v ON c.id_cultivo=v.id_cultivo
GROUP BY  f.nombre_finca
ORDER by mayor_ganancia_en_ventas DESC
LIMIT 1;

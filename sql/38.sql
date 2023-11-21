--Que finca ha sido la que menos dinero ha generado en ventas?

SELECT f.nombre_finca, sum(v.valor_venta) AS menor_ganancia_en_ventas FROM Finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca
INNER JOIN Ventas v ON c.id_cultivo=v.id_cultivo
GROUP BY  f.nombre_finca
ORDER by menor_ganancia_en_ventas ASC
LIMIT 1;

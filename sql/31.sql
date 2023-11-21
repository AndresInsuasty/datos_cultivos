--Cuanto dinero recibió Nelson en el año 2022?

SELECT p.nombre, sum(ps.valor_pago) AS suma_total_salario, strftime('%Y',ps.fecha_pago) AS anio_pago FROM Personal p
INNER JOIN pagos ps ON p.id_personal=ps.id_personal
WHERE p.nombre ='Nelson'
AND anio_pago  ='2022';
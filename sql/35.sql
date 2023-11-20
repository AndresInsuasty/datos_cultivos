--En que fecha se hizo el pago mas bajo registrado y a quien se le hizo?

SELECT p.nombre,min(ps.valor_pago) AS minimo_valor_pago, ps.fecha_pago FROM Personal p
INNER JOIN pagos ps ON p.id_personal=ps.id_personal;
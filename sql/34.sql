--Cuanto dinero en total se le ha pagado al personal de la finca "Unica"?

SELECT f.nombre_finca, sum(ps.valor_pago) AS total_pago FROM finca f
INNER JOIN Personal p ON f.id_finca=p.id_finca
INNER JOIN Pagos ps ON p.id_personal=ps.id_personal
WHERE f.nombre_finca ='Unica';
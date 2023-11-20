-- Quien es el propietario de la finca con el cultivo de menor inversion?

SELECT f.id_finca, f.propietario, f.nombre_finca, c.nombre_cultivo, min(c.valor_inversion) AS menor_inversion FROM Finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca;
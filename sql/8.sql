-- Que propietario tiene mas dinero invertido en sus cultivos?

SELECT f.id_finca, f.propietario, SUM(c.valor_inversion) AS mayor_inversion FROM Finca f
INNER JOIN Cultivos c ON f.id_finca = c.id_finca
GROUP BY f.id_finca, f.propietario
ORDER BY mayor_inversion DESC
LIMIT 1;
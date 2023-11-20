-- Cual fue el cultivo de menor inversión?

SELECT id_finca, nombre_cultivo, min(valor_inversion) AS minima_inversion FROM Cultivos;
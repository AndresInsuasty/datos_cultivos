-- Cual fue el cultivo de mayor inversión?

SELECT id_finca, nombre_cultivo, max(valor_inversion) AS mayor_inversion FROM Cultivos;
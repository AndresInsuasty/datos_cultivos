-- Identificar cuantos cultivos diferentes hay registrados
SELECT
    COUNT(DISTINCT nombre_cultivo) AS "Cultivos diferentes"
FROM Cultivos;
-- En que fecha se sembró mango en la finca de nombre: "Unica"? 

SELECT f.id_finca, f.nombre_finca, c.nombre_cultivo, c.fecha_siembra FROM Finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca
WHERE f.nombre_finca ='Unica'
AND C.nombre_cultivo ='mango';
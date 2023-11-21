/*Listar el nombre de las fincas y el nombre de sus propietarios que tengan un cultivo de maiz
 y que el valor de la inversion sea mayor a 10000000 y que el cultivo tenga un sensor de temperatura
*/

SELECT f.nombre_finca, f.propietario, c.nombre_cultivo, c.valor_inversion, s.nombre_sensor FROM Finca f
INNER JOIN Cultivos c ON f.id_finca=c.id_finca
INNER JOIN Sensores s ON C.id_cultivo=s.id_cultivo
WHERE c.nombre_cultivo ="maiz"
      AND c.valor_inversion >10000000
	  AND s.nombre_sensor ='sensor temperatura';
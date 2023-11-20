/*Listar el nombre de las fincas y el nombre de sus propietarios que tengan un cultivo de maiz
 y que el valor de la inversion sea mayor a 10000000.
*/

SELECT f.nombre_finca, f.propietario, c.nombre_cultivo, c.valor_inversion FROM Finca f
INNER JOIN Cultivos c ON f.id_finca =c.id_finca
WHERE c.nombre_cultivo='maiz'
AND valor_inversion > 10000000;

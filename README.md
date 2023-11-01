# Entrenamiento SQL
Este es un repositorio con una base de datos dummy sobre cultivos. Hay unos ejercicios propuestos y la solución puede ser vista en la carpeta _sql_ (las soluciones estan en construcción. Puedes enviar un PR con la solución de alguno de los ejercicios propuestos).

## Datos tecnicos
Las tablas que encontraras en [**datos_cultivos.db**](./datos_cultivos.db) son las siguientes:

* **Finca**: Esta tabla contiene los datos de las fincas de los agricultores. Los campos que contiene son:
  * **id_finca**: Identificador de la finca. Ej: 1
  * **nombre_finca**: Nombre de la finca
  * **tamanio_m2**: Area de la finca en metros cuadrados
  * **propietario**: Nombre del propietario de la finca

* **Cultivos**: Esta tabla contiene los datos de los cultivos de las fincas. Los campos que contiene son:
  * **id_cultivo**: Identificador del cultivo. Ej: 1
  * **nombre_cultivo**: Nombre del cultivo
  * **fecha_siembra**: Fecha de siembra del cultivo
  * **valor_inversion**: Valor de la inversion en el cultivo
  * **id_finca**: Identificador de la finca a la que pertenece el cultivo

* **Sensores**: Esta tabla contiene los datos de los sensores de los cultivos. Los campos que contiene son:
  * **id_sensor**: Identificador del sensor. Ej: 1
  * **nombre_sensor**: Nombre del sensor
  * **fecha_compra**: Fecha de compra del sensor
  * **id_cultivo**: Identificador del cultivo al que pertenece el sensor

* **Medicion_sensores**: Esta tabla contiene los datos de las mediciones de los sensores. Los campos que contiene son:
  * **id_medicion_sensores**: Identificador de la medicion. Ej: 1
  * **id_sensor**: Identificador del sensor al que pertenece la medicion
  * **valor_medicion**: Valor de la medicion
  * **fecha_medicion**: Fecha de la medicion

* **Personal**: Esta tabla contiene los datos del personal de las fincas. Los campos que contiene son:
  * **id_personal**: Identificador del personal. Ej: 1
  * **nombre**: Nombre del personal
  * **edad**: Edad del personal en años
  * **genero**: Genero del personal, puede ser MASCULINO o FEMENINO
  * **telefono**: Telefono del personal
  * **direccion**: Direccion del personal
  * **id_finca**: Identificador de la finca a la que pertenece el personal

* **Pagos**: Esta tabla contiene los pagos hechos al personal de cada finca
  * **id_pago**: Identificador del pago. Ej: 1
  * **id_personal**: Identificador del personal al que se le hizo el pago
  * **valor_pago**: Valor del pago
  * **fecha_pago**: Fecha del pago

* **Ventas**: Esta tabla contiene los datos de las ventas de los cultivos. Los campos que contiene son:
  * **id_venta**: Identificador de la venta. Ej: 1
  * **fecha_venta**: Fecha de la venta
  * **valor_venta**: Valor de la venta
  * **id_cultivo**: Identificador del cultivo al que pertenece la venta

El diagrama de las relaciones entre las tablas es el siguiente:
![diagrama base de datos](/imgs/diagrama.jpg)

## Ejercicios
1. Listar el nombre de las fincas y el nombre de sus propietarios - **Solución: [1.sql](./sql/1.sql)**
2. Identificar cuantos cultivos diferentes hay  - **Solución: [2.sql](./sql/2.sql)**
3. Cual fue el cultivo de mayor inversion?
4. Cual fue el cultivo de menor inversion?
5. Quien es el propietario de la finca con el cultivo de mayor inversion?
6. Quien es el propietario de la finca con el cultivo de menor inversion?
7. En que fecha se sembró mango en la finca de nombre: "Unica"?
8. Que propietario tiene mas dinero invertido en sus cultivos?
9. Listar el nombre de las fincas y el nombre de sus propietarios que tengan un area mayor a 10000 m2
10. Listar el nombre de las fincas y el nombre de sus propietarios que tengan un cultivo de maiz
11. Listar el nombre de las fincas y el nombre de sus propietarios que tengan un cultivo de maiz y que el valor de la inversion sea mayor a 10000000
12. Listar el nombre de las fincas y el nombre de sus propietarios que tengan un cultivo de maiz y que el valor de la inversion sea mayor a 10000000 y que el cultivo tenga un sensor de temperatura
13. Cual es el promedio de temperatura medida por los sensores?
14. Cual es el promedio de humedad medida por los sensores?
15. Realizar un query que muestre que cultivos tienen sensores de temperatura
16. Realizar un query que muestre que cultivos tienen sensores de humedad
17. Realizar un query que muestre que cultivos tienen sensores de viento
18. En que mes se compraron mas sensores?
19. En que fecha se presentó las mas alta temperatura?
20. Que finca presentó la mas alta temperatura y en que fecha fue esto?
21. Que finca presentó la mas alta humedad y en que fecha fue esto?
22. Que finca presentó la mas alta velocidad de viento y en que fecha fue esto?
23. Cual es el promedio de temperatura para la finca "la fuente" entre los meses de enero y marzo?
24. Cual es el promedio de temperatura para la finca "la fuente" entre los meses de agosto y octubre?
25. Cual es el sensor que mas mediciones ha registrado?
26. En que mes se registraron la mayor cantidad de mediciones?
27. Que finca tiene la menor cantidad de mediciones?
28. Que valor de medicion tiene el sensor 14 en la fecha 2023-04-20?
29. Cual es el telefono de Sofia en la tabla de "Personal"?
30. Cual es la dirección de Nelson en la tabla de "Personal"?
31. Cuanto dinero recibió Nelson en el año 2022?
32. Cuanto dinero recibió Nelson en el año 2023?
33. Cuanto dinero en total se le ha pagado al personal de la finca "Especial"?
34. Cuanto dinero en total se le ha pagado al personal de la finca "Unica"?
35. En que fecha se hizo el pago mas bajo registrado y a quien se le hizo?
36. Que cultivo ha sido el que mas dinero ha generado en ventas?
37. Que finca ha sido la que mas dinero ha generado en ventas?
38. Que finca ha sido la que menos dinero ha generado en ventas?
39. En que fecha se registro la venta mas alta y a que propietario de finca le pertenece?
40. Hay algun cultivo que no haya generado ventas?
41. Que cultivo se vendió por un valor de 5611329?
42. Muestre el promedio de las mediciones hechas para el cultivo que se vendió por ultima vez.
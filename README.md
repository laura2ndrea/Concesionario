# Concesionario 🚗
Base de datos concesionario de vehículos para gestionar la información sobre los vehículos en stock, clientes, ventas, y servicios de mantenimiento. 
## Contenido 
1. [Información general](#info-general)
2. [Tecnologías](#tecno)
3. [Instalación y ejecución](#install)
4. [Autores](#autores)

---
<a name="info-general"></a>
## Información general :speech_balloon:

- **Estado**: completado :white_check_mark:
  
### Diagrama UML E - R

  <img src="Concesionario.jpg">

### Justificación de diseño 

El diseño de la base de datos se estructuró para gestionar la información relacionada con vehículos, sus estados, tipos de combustible, marcas, servicios y ventas.

**Tablas**:
   - **estado_vehiculos**: tabla para categorizar los estados de un vehículo (nuevo, usado). 
   - **tipo_trasmisiones**: tabla para categorizar el tipo de trasmisión que tiene un vehículo. 
   - **tipo_combustibles**: tabla para categorizar el tipo de combustible que usa un vehículo. 
   - **Marcas**: tabla que guarda las marcas de los vehículos. 
   - **Vehículos**: tabla que guarda la información de cada vehículo. 
   - **vehiculos_combustible**: tabla para manejar la relación de muchos a muchos entre vehículos y tipos de combustibles. 
   - **Clientes**: tabla para guardar los datos de los clientes. 
   - **Vendedores**: tabla para guardar los datos de los vendedores. 
   - **tipo_servicios**: tabla para guardar los tipos de servicios (mantenimiento preventivo, correctivo, etc.) que ofrece el concesionario. 
   - **Servicios**: tabla para gestionar los servicios realizados a los vehículos. 
   - **metodo_pagos**: tabla para gestionar los metodos de pagos que existen. 
   - **servicios_clientes**: tabla para guardar los servicios cuando se hacen a un vehículo que ya esta vendido (es decir, le pertenece a un cliente). 
   - **ventas**: tabla para guardar las ventas realizadas. 

**Relaciones**:
   - Las relaciones entre las tablas se establecieron mediante claves foráneas. Por ejemplo, un vehículo está relacionado con su marca a través de la clave foránea `id_marca` en la tabla `Vehiculos`. 

### Restricciones y validaciones

- **Claves primarias**: cada tabla tiene una clave primaria que asegura la unicidad de cada registro. Por ejemplo:
   - `id_estado` en `estado_vehiculos`
   - `id_vehiculo` en `Vehiculos`

- **Claves foráneas**: las claves foráneas garantizan que las relaciones entre tablas sean coherentes. Por ejemplo:
   - `id_marca` en `Vehiculos` hace referencia a `Marcas(id_marca)`.
   - `id_cliente` en `Ventas` hace referencia a `Clientes(id_cliente)`.

- **Restricciones de unicidad**: se aplicaron a campos que deben ser únicos por ejemplo en el `correo` en `Clientes` y el `VIM` en `Vehiculos`, evitando duplicados en la base de datos.
  
- **Restricciones de valores no nulos**: se aplicaron a campos que deben no ser nulos, por ejemplo en el `VIM` en `Vehiculos`, evitando que se registre un vehiculo con ese campo en null. 
  
### Relaciones UML
Explicación de algunas de las relaciones entre entidades: 

- **Vehiculos**: la entidad vehiculo esta relacionada con estas otras entidades:
  - **tipo_combustible**: ya que esta relación de es muchos a muchos (es decir un tipo de combustible puede pertenecer a mas de un vehículo y un vehículo puede tener mas de un tipo de combustible), se creo una tabla intermedia llamada     **vehiculos_combustible** para manejarla.
  - **marca**: relacion de uno a muchos, es decir, un vehículo solo puede tener una marca, pero una misma marca le puede pertenecer a muchos vehículos.
  - **estado_vehículos**: relacion de uno a muchos, es decir, un vehículo solo puede tener un estado, pero un mismo estado le puede pertenecer a muchos vehículos.
  - **tipo_trasmisiones**: relacion de uno a muchos, es decir, un vehículo solo puede tener un tipo de trasmisión, pero una misma trasmisión le puede pertenecer a muchos vehículos.
 
- **Servicios**: la entidad servicios esta relacionada con estas otras entidades:
  - **tipo_servicios**: relacion de uno a muchos, es decir, un servicio solo puede tener un tipo de servicio, pero un tipó de servicio le puede pertenecer a muchos servicios.
  - **Vehículos**: relacion de uno a muchos, es decir, un vehículo solo tener muchos servicios, pero un servicio solo puede tener un vehículo. 
  - **servicios_clientes**: (cuando el vehículo al que se le va a hacer el servicio tiene un cliente) relacion de uno a uno. A su vez esta tabla esta relacionada con metodos_pagos, esta relación es de uno a muchos, en cada servicio_cliente, se paga con un metodo de pago, pero un mismo metodo de pago se puede utilizar en diferentes servicios a clientes.
 
- **Clientes**: la entidad clientes esta relacionada con ventas y servicios_clientes, ambas relaciones son de uno a muchos, es decir un cliente puede haber comprado muchos vehiculos o solicitado muchos servicios, pero para cada servicio o venta debe ser a nombre de un solo cliente.

- **Vendedores**: relacionado con la entidad ventas, relacion de uno a muchos, es decir, un vendedor puede hacer muchas ventas pero cada venta solo tiene un vendedor. 

- **Ventas**: relacionada con metodos de pagos, relación de uno a muchos, es deicr, una venta solo tiene un metodo de pago, pero un metodo de pago puede estar relacionado con muchas ventas. 

---
<a name="tecno"></a>
## Tecnologías :computer:

- **Visual Studio Code**
- **StarUML**

---
<a name="install"></a>
## Instalación y ejecución :wrench:

### Requisitos 
- Git. 
- Visual Studio Code
  
### Paso a paso 
1. Entra a la carpeta donde deseas clonar el repositorio.
2. Abre el terminal y copia el siguiente código: <br><br>
   ```
   git clone https://github.com/laura2ndrea/Concesionario.git 
   ```
3. Entra a la carpeta donde has clonado el repositorio.
4. Abre el archivo **concesionario.sql** con el con Visual Studio Code para verificar el documento.
---


## Autores :woman:
<a name="autores"></a>

- **Laura Rodríguez**:
   - *Aportes: diseño de la página, construcción del código, documentación.*
   - *Contacto: laura2ndrea12@gmail.com*

---

Hecho con 🫀 por [LauraRodriguez](https://github.com/laura2ndrea)

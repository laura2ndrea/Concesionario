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
   - **estado_vehiculos**: tabla para clasificar los 
   - **tipo_trasmisiones**: Para categorizar las características técnicas de los vehículos.
   - **tipo_combustibles**: Para almacenar información sobre las marcas de los vehículos.
   - **Marcas**: Tabla central que almacena información clave sobre cada vehículo, incluyendo referencias a su marca.
   - **Vehículos**: Para manejar la información de las personas involucradas en el proceso de venta y servicio.
   - **vehiculos_combustible**: Para registrar servicios realizados a los vehículos, con relación a su tipo.
   - **Clientes**: Para gestionar las transacciones y métodos de pago utilizados.
   - **Vendedores**: Para gestionar las transacciones y métodos de pago utilizados.
   - **tipo_servicios**: Para gestionar las transacciones y métodos de pago utilizados.
   - **Servicios**: Para gestionar las transacciones y métodos de pago utilizados.
   - **metodo_pagos**: Para gestionar las transacciones y métodos de pago utilizados.
   - **servicios_clientes**: Para gestionar las transacciones y métodos de pago utilizados.
   - **ventas**: Para gestionar las transacciones y métodos de pago utilizados.

2. **Relaciones**:
   - Las relaciones entre las tablas se establecieron mediante claves foráneas. Por ejemplo, un vehículo está relacionado con su marca a través de la clave foránea `id_marca` en la tabla `Vehiculos`. Esto permite mantener la integridad referencial y facilita consultas relacionadas.

  
### Restricciones y validaciones
  
### Relaciones UML
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

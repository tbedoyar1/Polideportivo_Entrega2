# Polideportivo_Entrega2


Estándar de Nombramiento de Base de Datos

Este documento describe el estándar de nombramiento utilizado en el diseño de la base de datos del proyecto. Su objetivo es garantizar consistencia, legibilidad y mantenibilidad en los nombres de todos los objetos de la base de datos.

🌍 Idioma de los nombres

Todos los identificadores (tablas, columnas, constraints, etc.) estarán escritos en español.

Se utilizarán palabras completas y descriptivas, evitando abreviaciones innecesarias.

✍️ Convención de escritura

Se utilizará el formato snake_case (minúsculas y palabras separadas por guion bajo).

Ejemplo: fecha_evento, id_cliente, inscripciones_deportes.

Justificación:

Es más legible en SQL, especialmente en consultas largas.

Es el estándar más utilizado en motores como MySQL y PostgreSQL.

📊 Reglas de nombramiento por tipo de objeto
1. Tablas

Nombre en plural.

Siempre en minúsculas.

Usar sustantivos claros que representen la entidad.

Longitud máxima: 30 caracteres.

✅ Ejemplo:

clientes

profesores

inscripciones

2. Campos
a) Campos de datos generales

Nombre en snake_case.

Deben describir claramente el contenido.

✅ Ejemplo:

nombre

apellido

telefono_contacto

b) Campos de clave primaria

Prefijo obligatorio: id_ seguido del nombre de la tabla en singular.

✅ Ejemplo:

En tabla clientes: id_cliente

En tabla deportes: id_deporte

c) Campos de clave foránea

Prefijo obligatorio: id_ seguido del nombre de la tabla referenciada en singular.

✅ Ejemplo:

En tabla inscripciones: id_cliente, id_deporte

En tabla profesores: id_deporte

d) Campos de fecha

Nombre debe iniciar con fecha_.

✅ Ejemplo:

fecha_nacimiento

fecha_evento

fecha_inscripcion

e) Campos bandera (flags / booleanos)

Nombre debe iniciar con es_ o tiene_, indicando condición.

✅ Ejemplo:

es_activo

tiene_descuento

3. Constraints
a) Claves primarias

Convención: pk_nombre_tabla

✅ Ejemplo:

pk_clientes

pk_deportes

b) Claves foráneas

Convención: fk_tabla_origen_columna

 Ejemplo:

fk_inscripciones_id_cliente

fk_profesores_id_deporte

c) Unique, Check y otros constraints

Convención: uk_nombre_tabla_columna (para UNIQUE)

Convención: ck_nombre_tabla_columna (para CHECK)

 Ejemplo:

uk_clientes_email

ck_clientes_edad

 Resumen de Estándar

Idioma: Español.

Convención: snake_case.

Tablas: plural, minúsculas.

PK: id_<tabla_singular>.

FK: id_<tabla_referenciada>.

Fechas: fecha_<descripcion>.

Flags: es_ / tiene_.

Constraints: pk_, fk_, uk_, ck_.

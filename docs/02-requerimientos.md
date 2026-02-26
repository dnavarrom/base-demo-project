# 2. Requerimientos Analíticos y de Sistema

Un Agente IA solo puede ser tan bueno como el contexto que se le proporciona. Si le das instrucciones vagas, inventará cosas. Si le das un **Product Requirement Document (PRD)** sólido, escribirá un código robusto.

## 2.1 Tu tarea como Humano (Completar esta plantilla)

Abre este archivo y llena los espacios en blanco `[ ... ]` con la información sobre el sistema de inventario que queremos construir. Cuanto más detallado seas, mejor.

---

### PRODUCT REQUIREMENT DOCUMENT (PRD)

**Nombre del Proyecto:** Sistema Mini de Gestión de Inventario
**Objetivo del Negocio:**
[EJEMPLO: Permitir a una pequeña tienda registrar productos, actualizar la cantidad de stock disponible y evitar que el stock sea menor a cero mediante una interfaz web simple.]

**Usuarios Objetivo:**
[EJEMPLO: Empleados de bodega, administrador de tienda.]

**Requerimientos Funcionales (Lo que la app DEBE hacer):**
1. [EJEMPLO: El sistema debe permitir crear un producto con los campos: Nombre, SKU (único), Precio y Cantidad inicial.]
2. [EJEMPLO: El sistema debe mostrar un listado de todos los productos ordenados alfabéticamente.]
3. [EJEMPLO: El sistema debe permitir registrar una "salida de inventario" (restar cantidad). Si se intenta restar más de lo que hay, debe lanzar un error y cancelar la operación.]
4. [Añade otro requerimiento aquí...]
5. [Añade otro requerimiento aquí...]

**Requerimientos No Funcionales (Cómo debe comportarse la app):**
1. [EJEMPLO: La base de datos debe ser PostgreSQL y debe correr dentro de un contenedor Docker local.]
2. [EJEMPLO: Todos los endpoints de la API deben retornar JSON válido.]
3. [EJEMPLO: Si un servicio falla, debe existir un registro (log) de error claro en la terminal.]

---

## 2.2 Instrucción para el Agente (Agent Task)

Una vez que hayas completado el PRD de arriba, dirígete al chat con el Agente y dale la siguiente instrucción para forzar la fase de **Planificación** antes de tirar código a lo loco.

---
### ✂️ Copiar y Pegar al Agente IA:

> He actualizado el archivo `docs/02-requerimientos.md` con los detalles funcionales y no funcionales de la aplicación que vamos a construir. 
> 
> **Tu tarea:**
> 1. Lee cuidadosamente todo el documento `docs/02-requerimientos.md`.
> 2. Genera un "Plan de Implementación" (Implementation Plan) en formato markdown detallando cómo resolverás estos requisitos paso a paso.
> 3. Identifica entidades principales (ej. Producto, Transacción, etc.).
> 4. **Importante:** NO escribas código para la aplicación todavía. Solo entrégame el plan para que yo, como tu Director, lo apruebe o solicite cambios. 
---

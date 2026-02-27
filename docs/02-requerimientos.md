# 2. Requerimientos Analíticos y de Sistema

Un Agente IA solo puede ser tan bueno como el contexto que se le proporciona. Si le das instrucciones vagas, inventará cosas. Si le das un **Product Requirement Document (PRD)** sólido, escribirá un código robusto.

## 2.1 Tu tarea como Humano (Completar esta plantilla)

Abre este archivo y llena los espacios en blanco `[ ... ]` con la información sobre el sistema de inventario que queremos construir. Cuanto más detallado seas, mejor.

---

### PRODUCT REQUIREMENT DOCUMENT (PRD)

**Nombre del Proyecto:** Sistema Mini de Gestión de Inventario
**Objetivo del Negocio:**
Proveer una API resiliente para una pequeña bodega que permita registrar productos y actualizar su stock en tiempo real mediante transacciones formales, evitando quiebres de inventario o stocks negativos. Proveer un frontend que permita manupular el inventario

**Usuarios Objetivo:**
Sistemas de punto de venta (POS) y personal administrativo de bodega.

**Requerimientos Funcionales (Lo que la app DEBE hacer):**
1. Gestión de Productos: El sistema debe permitir crear y consultar productos. Cada producto debe tener: id (autogenerado), nombre (string), sku (string alfanumérico único), precio (decimal mayor a 0) y un stock_actual que debe iniciar en 0 si no se provee.
2. Listado Paginado: El sistema debe ofrecer un endpoint que liste todos los productos disponibles, mostrando siempre su stock_actual. Debe soportar búsqueda parcial por el campo nombre.
3. Registro de Transacciones: El stock no debe poder modificarse de forma directa. Toda alteración de stock debe hacerse creando una "Transacción de Inventario" con los campos: producto_sku (qué producto), cantidad (entero, cuántas unidades) y tipo (string: "ENTRADA" o "SALIDA").
4. Validación Crítica de Negocio: Cuando se registre una "SALIDA", la capa de lógica del sistema debe asegurar de forma estricta que haya suficiente stock disponible antes de restar. Si la cantidad solicitada deja el stock_actual por debajo de cero, la transacción debe ser revertida de forma segura y devolver un HTTP Error 400 explicando el motivo.
5. Historial: Un endpoint para consultar el historial de últimas transacciones dado el SKU de un producto en particular.
6. Frontend: Un frontend que permita manupular el inventario
7. Autenticación: Mecanismo de autenticación básico

**Requerimientos No Funcionales (Cómo debe comportarse la app):**
1. Framework y Lenguaje: Node.js con Express (o Fastify) fuertemente tipado con TypeScript estricto. Frontend utilizando Next.js
2. Persistencia: PostgreSQL como base de datos y debe levantarse vía Docker (Docker Compose).
3. Manejo de Datos: Utilizar un ORM robusto para TypeScript (como Prisma o TypeORM) para manejar las migraciones y mantener la integridad relacional de la base de datos.
4. Arquitectura: Debe respetarse estrictamente una arquitectura de 3 capas. El controlador HTTP NO puede hacer try/catch para consultas a la Base de datos de forma directa; debe llamar a un Servicio.
5. Testeo: La regla de negocio de "Evitar stock negativo" debe estar testeada. El sistema debe contar con al menos una prueba unitaria (usando Jest/Vitest) para el Servicio de Inventario certificando que este caso de uso funciona.
6. Seguridad: Debe implementar un sistema de autenticación básico utilizando JWT Tokens y bcrypt para el hashing de contraseñas. Almacenar el hash de la contraseña en la base de datos de usuarios.

**Casos de Uso Críticos (User Stories & Criterios de Aceptación):**
Para guiar el desarrollo de pruebas unitarias y garantizar la lógica de negocio, considerar los siguientes escenarios en formato BDD (*Given-When-Then*):

1. **Caso: Evitar quiebre de stock (Restar más de lo disponible)**
   - **Given** (Dado) que el producto "SKU-001" tiene `stock_actual: 5`.
   - **When** (Cuando) el empleado intenta registrar una `SALIDA` por `cantidad: 6`.
   - **Then** (Entonces) el sistema debe rechazar la transacción.
   - **And** (Y) debe devolver un error HTTP 400 con un mensaje claro (ej. "Stock insuficiente").
   - **And** el stock del "SKU-001" debe permanecer en `5`.

2. **Caso: Salida de inventario exitosa**
   - **Given** que el producto "SKU-001" tiene `stock_actual: 5`.
   - **When** el empleado intenta registrar una `SALIDA` por `cantidad: 2`.
   - **Then** el sistema debe registrar la transacción exitosamente.
   - **And** el nuevo `stock_actual` debe actualizarse a `3`.

3. **Caso: Autenticación Fallida**
   - **Given** que un usuario intenta autenticarse mediante API.
   - **When** provee un usuario válido pero una contraseña incorrecta.
   - **Then** el sistema NO debe generar el token JWT.
   - **And** debe devolver HTTP 401 Unauthorized de forma segura sin revelar información extra.


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

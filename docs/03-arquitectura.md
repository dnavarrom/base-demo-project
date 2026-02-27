# 3. Diseño de Arquitectura: Frontend y Backend (3 Capas)

Cuando delegas la creación de código a una IA, sin limitaciones estrictas, el Agente tenderá a poner todo el código mezclado. Para un sistema profesional con Autenticación y Frontend separado, debemos imponer orden.

En este curso dividiremos el proyecto en dos grandes bloques dentro de `/app-workspace`:
1. `/backend`: Desarrollado en Node.js (Express/Fastify) bajo una **Arquitectura en 3 Capas**.
2. `/frontend`: Desarrollado en Next.js.

## ¿Qué son las 3 Capas del Backend?

1.  **Capa de Presentación (Controladores / Middlewares / Rutas):** Recibe las llamadas HTTP, pasa por el middleware de Autenticación (JWT), valida que el formato de los datos de entrada es correcto utilizando validadores, y entrega respuestas HTTP (JSON). *No toma decisiones de negocio ni consulta la base de datos.*
2.  **Capa de Negocio (Servicios):** El corazón de la app. Aquí vive la lógica de autenticación (hashear contraseñas) y reglas de inventario (ej: "no se puede sacar más stock del que existe").
3.  **Capa de Acceso a Datos (Repositorios / Modelos):** Se comunica con PostgreSQL mediante el ORM (ej. Prisma). Convierte los datos de la DB a objetos de TypeScript.

## 3.1 Instrucción Arquitectónica (Agent Task)

Una vez que aprobasate el "Plan de Implementación" del paso 2, es momento de obligar a la IA a crear esta separación de carpetas y responsabilidades.

---
### ✂️ Copiar y Pegar al Agente IA:

> El Plan de Implementación está aprobado. Ahora debemos definir la estructura de carpetas en `/app-workspace` antes de codificar la lógica.
> 
> Es **MANDATORIO** que dividas el código en dos directorios principales: `/app-workspace/frontend` (para Next.js) y `/app-workspace/backend` (para nuestra API en Node.js).
> 
> Para el `/backend`, debes usar un patrón de diseño estricto de Arquitectura en 3 Capas (N-Tier):
> 
> - `/backend/src/middlewares`: Para el interceptor de seguridad JWT y validadores de schemas.
> - `/backend/src/controllers`: Solo para parsear requests HTTP a DTOs y devolver responses.
> - `/backend/src/services`: Donde residirá toda la lógica, reglas de inventario y lógicas de Auth (login, hashing). El controlador llama al servicio.
> - `/backend/src/repositories` (o `/backend/src/models`): Solo consultas a la base de datos o al ORM. El servicio llama al repositorio.
> 
> Además, requiero inyección de dependencias (aunque sea manual) para poder testear los servicios aislando la base de datos en el futuro.
> 
> **Tu tarea:**
> Crea esta estructura de carpetas y archivos vacíos (o con placeholders) en `/app-workspace/backend` siguiendo la arquitectura. Configúrame un archivo básico `index.ts` (o `app.ts`) que levante un servidor mockeado probando que las capas se conectan correctamente. Detente y avísame para que yo revise el esqueleto antes de pasar al Frontend.
---

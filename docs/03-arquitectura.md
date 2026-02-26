# 3. Diseño de Arquitectura en 3 Capas

Cuando delegas la creación de código a una IA, sin limitaciones estrictas, el Agente tenderá a poner todo el código (la conexión a base de datos, la lógica compleja y las validaciones web) en el mismo archivo (ej. `index.ts` o en las rutas directamente). Esto es insostenible y no profesional.

En este curso impondremos una **Arquitectura en 3 Capas**.

## ¿Qué son las 3 Capas?

1.  **Capa de Presentación (Controladores / Rutas):** Recibe las llamadas HTTP, valida que el formato de los datos de entrada es correcto, y entrega respuestas HTTP (JSON). *No toma decisiones de negocio.*
2.  **Capa de Negocio (Servicios):** El corazón de la app. Aquí vive la lógica, las sumas y las reglas (ej: "no se puede sacar más stock del que existe").
3.  **Capa de Acceso a Datos (Repositorios / Modelos):** Se comunica con la base de datos (PostgreSQL). Convierte los datos de la DB a objetos de TypeScript. *No sabe qué es una respuesta HTTP.*

## 3.1 Instrucción Arquitectónica (Agent Task)

Una vez que aprobasate el "Plan de Implementación" del paso 2, es momento de obligar a la IA a seguir este diseño estructural.

---
### ✂️ Copiar y Pegar al Agente IA:

> El Plan de Implementación está aprobado. Ahora debemos definir la estructura de carpetas en `/app-workspace/src` antes de codificar la lógica.
> 
> Es **MANDATORIO** que utilices un patrón de diseño estricto de Arquitectura en 3 Capas (N-Tier):
> 
> - `/src/controllers`: Solo para parsear requests HTTP a Data Transfer Objects (DTOs) y devolver responses.
> - `/src/services`: Donde residirá toda la lógica y reglas de inventario. El controlador llama al servicio.
> - `/src/repositories` (o `/src/models`): Solo consultas a la base de datos o al ORM si decides usar uno (como Prisma o Drizzle). El servicio llama al repositorio.
> 
> Además, requiero inyección de dependencias (aunque sea manual) para poder testear los servicios aislando la base de datos en el futuro.
> 
> **Tu tarea:**
> Crea la estructura de carpetas y archivos vacíos (o con placeholders) siguiendo esta arquitectura, y configúrame un archivo básico `index.ts` (o `app.ts`) que levante un servidor mockeado probando que las capas se conectan correctamente. Detente y avísame para que yo revise el esqueleto.
---

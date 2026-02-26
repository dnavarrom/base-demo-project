# 4. Aceleradores: Skills y Contexto

Los agentes de IA modernos soportan "Skills" (habilidades pre-cargadas) o integración con servidores MCP (Model Context Protocol). Estas herramientas le otorgan superpoderes al agente dándole contexto de la versión más reciente de un framework, o de mejores prácticas específicas sin que tengas que explicárselo cada vez.

Por ejemplo, usando algo como [skills.sh](https://skills.sh/).

## 4.1 Tipos de Contexto que debes asignar

Como Humano, eres responsable de dotar al Agente con la "personalidad" o la pericia correcta al momento de pedirle que escriba el frontend, o que se encargue de la seguridad, o que escriba los tests.

## 4.2 Instrucciones de Especialidad (Agent Task)

Cuando estés listo para que la IA genere el frontend o alguna capa de la lógica compleja, utiliza "personajes" y "skills".

---
### ✂️ Copiar y Pegar al Agente IA (Ejemplo para UI/UX):

> Para la construcción del Frontend de nuestro sistema de inventario (que vivirá en `/app-workspace/frontend` o servido desde el backend mediante SSR/React), asume el Rol de **Ingeniero Frontend Senior y Diseñador UX/UI**.
> 
> Usa el skill de diseño premium. 
> Reglas obligatorias:
> 1. No uses diseños en blanco y negro básicos ni CSS genérico.
> 2. Implementa un diseño atractivo ("wow effect") con paletas cuidadas (ej. Slate + Primary Indigo), botones interactivos, hover actions y transiciones suaves. 
> 3. Construyelo priorizando legibilidad (usaremos una tipografía moderna como Inter que referenciarás en el CSS).
> 
> Procede a implementar la pantalla de lista de productos y creación.
---

### ✂️ Copiar y Pegar al Agente IA (Ejemplo para Seguridad):

> Ahora asume el Rol de **Ingeniero de Seguridad / SecOps**.
> Audita el código generado en nuestra carpeta `/app-workspace/src` y aplica el *skill* de OWASP Top 10.
> 
> Asegúrate de que:
> 1. Todas las variables de entorno de base de datos (`POSTGRES_PASSWORD`, etc) estén fuera del control de código fuente (usa `.env.example`).
> 2. Las queries estén sanitizadas (previene SQL injection).
> 
> Realiza los cambios que estimes necesarios y generame un reporte conciso de qué reparaste.
---

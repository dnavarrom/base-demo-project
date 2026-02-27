# 4. Aceleradores: Skills y Contexto

Los agentes de IA modernos soportan "Skills" (habilidades pre-cargadas) o integración con servidores MCP (Model Context Protocol). Estas herramientas le otorgan superpoderes al agente dándole contexto de la versión más reciente de un framework, o de mejores prácticas específicas sin que tengas que explicárselo cada vez.

Por ejemplo, usando algo como [skills.sh](https://skills.sh/).

## 4.1 Tipos de Contexto que debes asignar

Como Humano, eres responsable de dotar al Agente con la "personalidad" o la pericia correcta al momento de pedirle que escriba el frontend, o que se encargue de la seguridad, o que escriba los tests.

## 4.2 Instrucciones de Especialidad (Agent Task)

Cuando estés listo para que la IA genere el frontend o alguna capa de la lógica compleja, utiliza "personajes" y "skills".

---
### ✂️ Copiar y Pegar al Agente IA (Ejemplo para UI/UX Frontend de Next.js):

> Para la construcción del Frontend de nuestro sistema de inventario (que vivirá en `/app-workspace/frontend` usando Next.js), necesito que incorpores explícitamente las siguientes habilidades de UI/UX de tu repositorio de conocimientos o instales estos MCP/Skills:
> - `@404kidwiz/claude-supercode-skills/frontend-ui-ux-engineer`
> - `@anthropics/skills/frontend-design`
>
> Actúa bajo estos lineamientos:
> 1. **Diseño Premium y Estética Audaz**: No uses diseños en blanco y negro básicos ni CSS genérico. Transforma la interfaz funcional en una UI visualmente impresionante utilizando glassmorphism, sombras dramáticas y micro-interacciones.
> 2. **Tipografía y Composición**: Inyecta tipografías distintivas (no uses las típicas como Arial o Inter a menos que tu diseño busque un minimalismo refinado extremo) y mantén un layout que rompa la monotonía en la exhibición de productos.
> 3. **Next.js & React**: Respeta la estructura de App Router de Next.js y aprovecha bibliotecas de animaciones como Framer Motion u opciones CSS nativas avanzadas para transiciones de carga suaves y agradables, según las directrices de tus skills.
> 
> Procede a inicializar el proyecto Next.js e implementar la pantalla principal de lista de productos y creación, aplicando este nivel de maestría de Front-End Engineer.
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

## 4.3 Integración de Servidores MCP para Infraestructura (Docker & BD)

Los agentes modernos pueden conectarse a "Servidores MCP (Model Context Protocol)" que actúan como puentes entre la IA y tus herramientas locales. Para que el Agente no programe "a ciegas", le pediremos que instale herramientas para inspeccionar la base de datos y los contenedores.

*(Nota: Dependiendo del cliente de IA que uses -como Claude Desktop, Cline, o Windsurf-, el Agente puede pedirte confirmación para editar su propio archivo de configuración de MCPs, o puede usar herramientas integradas para hacerlo de forma dinámica).*

---
### ✂️ Copiar y Pegar al Agente IA (Configuración de MCPs):

> Para poder interactuar de forma autónoma con la infraestructura del proyecto, necesito que adquieras o configures los siguientes Servidores MCP en tu entorno:
> 
> 1. **PostgreSQL MCP (`@modelcontextprotocol/server-postgres`)**: Configúralo para conectarse a la URL de conexión local de la base de datos que levantaremos con Docker. Úsalo para inspeccionar esquemas, validar migraciones y leer el estado real de los datos sin depender de mí.
> 2. **Docker MCP** (si tienes soporte en tu cliente): Para explorar el estado de los contenedores locales, leer logs si el backend o la BD fallan en arrancar, e identificar puertos ocupados.
> 
> **Tu tarea:**
> Identifica si tienes permitido modificar tu configuración de MCPs en este editor/cliente de forma nativa. 
> - **SI PUEDES:** Realiza el setup del MCP de PostgreSQL utilizando `npx -y @modelcontextprotocol/server-postgres <db-url>`. 
> - **SI NO PUEDES:** Detente inmediatamente y solicítame a mí (El Humano) que copie el contenido que dejé preparado en `docs/MCP_CONFIG.json` dentro de los ajustes de Globales de MCP de este Editor (ej. `claude_desktop_config.json` o Settings del IDE). Una vez que yo te avise que lo pegué y reinicié el servidor, tú deberás probar la conexión.
---

## 4.4 Generación de Diagramas (Living Documentation)

A medida que el ecosistema y la arquitectura o el modelo de base de datos evolucionan, leer docenas de archivos resulta exhaustivo para el humano responsable de auditar. Debemos delegarle a la IA la tarea fundamental de mantener un "Mapa" del proyecto, actualizando diagramas de flujo y diagramas Entidad-Relación (ER) como parte del proceso habitual de commit o cierre de Hito. 

Configura el servidor MCP oficial de Excalidraw en tu entorno para dotar al agente de la capacidad real de renderizar componentes puros `.excalidraw`.

*(Nota: Este MCP Server expone herramientas para generar interfaces gráficas que dibujan literalmente la arquitectura en formato visual).*

---
### ✂️ Copiar y Pegar al Agente IA (Living Documentation):

> Para asegurarme de no perder el rumbo con tu código y auditar la arquitectura gráficamente, te doy una directriz absoluta e ineludible: Integra y utiliza el MCP de Excalidraw (`https://github.com/excalidraw/excalidraw-mcp`). 
> 
> **Tu tarea:**
> 1. Explora tu capacidad para auto-instalar este MCP Server vía `npx -y @excalidraw/excalidraw-mcp`. Si careces de permisos de sistema para modificar tu propio archivo de configuración, solicítame a mí (El Humano) que agregue el bloque `"excalidraw"` que dejé preparado en `docs/MCP_CONFIG.json` hacia tus configuraciones globales. 
> 2. Al finalizar CADA uno de los Hitos Críticos de desarrollo, o cada vez que modifiques el esquema de Prisma o modifiques arquitecturas, estás OBLIGADO a usar la herramienta provista por este MCP.
> 3. Deberás auto-generar (o actualizar) un diagrama creando el archivo `docs/diagramas/arquitectura_actual.excalidraw`.
> 4. En ese diagrama debes dibujar la Arquitectura general (Frontend, API, Postgres) o el Diagrama Entidad-Relación si corresponde, con flechas y nodos.
> 5. Así, garantizaremos la práctica de "Living Documentation" nativa. Genera el primer diagrama ahora mismo como prueba.
---

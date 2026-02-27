# Curso de Desarrollo Asistido por Inteligencia Artificial (Agéntico)

¡Bienvenido al repositorio base! Este proyecto está diseñado para transformar la forma en la que construyes software, pasando del rol de "programador tradicional" al de **Director de Ingeniería**. 

Aquí aprenderás a orquestar agentes de Inteligencia artificial para construir aplicaciones completas de inicio a fin (End-to-End).

## Objetivo del Curso
Aprenderás a planificar, diseñar y dirigir a un Agente IA para construir un **Sistema de Gestión de Inventario Mini**, utilizando tecnologías modernas (TypeScript, Node.js, Docker para testing/despliegue local).

## Estructura de este Repositorio

El proyecto se divide en partes principales:

1. **`AGENT_HINTS.md` (Raíz)**: Un archivo global de directivas que la IA debe leer automáticamente para no cometer "errores de principiante" al configurar los módulos (como el uso estricto de ESM en Node.js o App Router en Next.js).
2. **`/docs`**: Contiene todo el material teórico, plantillas y **prompts** que tú, como humano, utilizarás para dirigir al Agente.
3. **`/app-workspace`**: Es el directorio de trabajo donde la IA escribirá el código fuente de la aplicación real.

### Flujo de Trabajo (Tu rol como Director)

Para tener éxito, deberás seguir los archivos de la carpeta `/docs` en orden secuencial:

*   [**01-setup-y-stack.md**](./docs/01-setup-y-stack.md): Configurarás de tu entorno local (IDE, Docker, Node) y le darás al Agente la instrucción inicial sobre qué stack de tecnologías utilizar.
*   [**02-requerimientos.md**](./docs/02-requerimientos.md): Llenarás un Documento de Requerimientos de Producto (PRD). Identificarás qué quieres que haga la app.
*   [**03-arquitectura.md**](./docs/03-arquitectura.md): Aprenderás a imponer límites de diseño al Agente. Le pedirás que diseñe en 3 capas.
*   [**04-skills-y-mcp.md**](./docs/04-skills-y-mcp.md): Configurarás herramientas externas (Skills/MCP) para que el agente tenga contexto de frameworks modernos, UI y seguridad.
*   [**05-workflow-agentico.md**](./docs/05-workflow-agentico.md): Las reglas de oro de la iteración. Cómo probar, refinar y desplegar la app de forma segura mediante Docker.

---

### 🧹 ¿Cómo Reiniciar el Entorno? (Cleanup)

Si deseas volver a intentar el proyecto desde cero con otro Agente o en un nuevo chat, hemos incluido un script que borrará todo el código generado de forma segura.

Abre tu terminal en la raíz de este proyecto y ejecuta:

```bash
./cleanup.sh
```

Esto vaciará la carpeta `/app-workspace` pero mantendrá la estructura base y este README intactos.

---


> **Misión:** Al finalizar de seguir estos documentos, la carpeta `/app-workspace` debería contener una aplicación completamente funcional, testeada y lista para ejecutar. ¡Empecemos con el documento **01**!

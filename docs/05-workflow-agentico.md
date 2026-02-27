# 5. Workflow Agéntico: Ejecución y Testing

Dirigir y desarrollar con Inteligencia artificial no se trata de darle un prompt y esperar a que el software entero se genere bien al primer intento. Se trata de un **ciclo de feedback**.

El Agente hará la mayor parte de la creación de archivos y escritura rápida, pero equivocará cosas o tomará atajos. Tú debes corregir el curso.

## 5.1 El Ciclo de Desarrollo Interactivo

1. **Definir Contexto:** "Lee esto" (PRD, Arquitectura, Archivos previos).
2. **Definir Objetivo:** "Resuelve la funcionalidad X".
3. **Limitar Ambito:** "Usa el estilo Y, e implementa tests, NO alteres configuraciones ajenas".
4. **Revisar:** Como humano, abres el código que la IA generó y validas si la lógica tiene sentido.
5. **Corregir (Feedback):** "Este test está fallando por `X`" o "Te olvidaste de importar esta librería, usa `Y` y arréglalo".

## 5.2 El Despliegue Completo con Docker (Agent Task)

Para asegurar que nuestro sistema de inventario funciona tal como funcionaría en producción, delegaremos a la IA la tarea de orquestar los tres componentes que hemos construido: Base de datos, Backend y Frontend.

*Nota técnica:* ¿Es necesario un contenedor para el frontend? Sí. Aunque Next.js soporta un modo `dev` muy ágil en host, empacar la aplicación web en un contenedor Docker con una imagen Node alpina nos permite validar que el build de producción (`next build`) funciona, y asegura que las aplicaciones puedan comunicarse bajo una misma red privada de Docker, previniendo errores de CORS o puertos cruzados en diferentes sistemas operativos.

---
### ✂️ Copiar y Pegar al Agente IA:

> La aplicación backend, el frontend en Next.js y nuestra arquitectura están listos. Ahora nos encargaremos del testing de integración y despliegue local de la infraestructura completa.
> 
> 1. Crea un archivo `docker-compose.yml` en la raíz de `/app-workspace`.
> 2. Este archivo debe definir TRES servicios conectados a una misma red interna (`app-network`): 
>    - `db`: Una base de datos PostgreSQL (imagen oficial). Utiliza variables de entorno para usuario, password y DB leídas desde un archivo `.env` en la raíz de app-workspace.
>    - `api`: Un contenedor para nuestro backend (Node.js). Debe proveer un `Dockerfile` en `/backend`. Debe ejecutar en puerto 3000 y depender de `db`.
>    - `web`: Un contenedor para nuestro frontend (Next.js). Debe proveer un `Dockerfile` optimizado en `/frontend` de múltiples etapas (multi-stage build para correr el build resultante). Debe exponer el puerto 3001 y tener una variable de entorno `NEXT_PUBLIC_API_URL` apuntando al servicio `api`.
> 3. Escribe un script en un archivo de Bash (`run-e2e.sh`) en `/app-workspace` que realice lo siguiente secuencialmente: Levantar Docker en background -> Correr migraciones de DB -> Esperar a que el backend y frontend estén saludables -> Ejecutar un ping / healthcheck simple.
> 
> **IMPORTANTE**: Recuerda que tienes a tu disposición los Servidores MCP de Docker y Postgres (instalados en el paso 4). Si detectas algún fallo al ejecutar `docker-compose up` o si `run-e2e.sh` falla, utiliza tu capacidad de MCP para leer los logs en vivo de los contenedores o conectarte a la base de datos para diagnosticar, en lugar de adivinar o pedirme a mí que ejecute comandos.
> 
> Construye estos descriptores de despliegue y, usando tu capacidad de ejecutar comandos en mi terminal, ejecuta el `docker-compose up -d` demostrándome que el ambiente End-to-End se levanta de forma correcta.
---

## 5.3 Conclusión del Curso
Si has seguido estos pasos y aprobado los pull requests/modificaciones del Agente, ahora tienes un Sistema de Gestión de Inventario funcional corriendo localmente.

### **¿Qué acabas de hacer?**
Has fungido como puente entre las herramientas y el código. Defines reglas de arquitectura, provees requisitos funcionales en lenguaje natural, auditas en busca de fallos de seguridad y ordenas pruebas en entornos de contenedores locales, todo sin, necesariamente, escribir tú mismo la lógica. ¡Felicidades, eres un desarrollador del futuro!

# 5. Workflow Agéntico: Ejecución y Testing

Dirigir y desarrollar con Inteligencia artificial no se trata de darle un prompt y esperar a que el software entero se genere bien al primer intento. Se trata de un **ciclo de feedback**.

El Agente hará la mayor parte de la creación de archivos y escritura rápida, pero equivocará cosas o tomará atajos. Tú debes corregir el curso.

## 5.1 El Ciclo de Desarrollo Interactivo

1. **Definir Contexto:** "Lee esto" (PRD, Arquitectura, Archivos previos).
2. **Definir Objetivo:** "Resuelve la funcionalidad X".
3. **Limitar Ambito:** "Usa el estilo Y, e implementa tests, NO alteres configuraciones ajenas".
4. **Revisar:** Como humano, abres el código que la IA generó y validas si la lógica tiene sentido.
5. **Corregir (Feedback):** "Este test está fallando por `X`" o "Te olvidaste de importar esta librería, usa `Y` y arréglalo".

## 5.2 El Despliegue de Testing con Docker (Agent Task)

Para asegurar que nuestro sistema de inventario funciona tal como funcionaría en producción, delegaremos a la IA la tarea de montar los contenedores de base de datos y correr los tests en un entorno aislado.

---
### ✂️ Copiar y Pegar al Agente IA:

> La aplicación backend y su arquitectura están listas. Ahora nos encargaremos del testing de integración e infraestructura.
> 
> 1. Crea un archivo `docker-compose.yml` en la raíz de `/app-workspace`.
> 2. Este archivo debe definir dos servicios: 
>    - `db`: Una base de datos PostgreSQL. Utiliza las variables de entorno para usuario, password y DB desde un `.env`.
>    - `api`: Un contenedor con Node.js que ejecute nuestra aplicación exponiendo el puerto 3000 (o el que se haya configurado), el cual debe depender de `db`.
> 3. Escribe un script en el `package.json` o un archivo de Bash (`run-tests.sh`) que realice lo siguiente secuencialmente: Levantar Docker en background -> Correr migraciones de DB (si aplican) -> Correr los tests -> Destruir los contenedores limpios.
> 
> Construye estos descriptores y, usando tu capacidad de ejecutar comandos en mi terminal, ejecuta el contenedor para levantar la BD y demostrándome que la conexión base es exitosa.
---

## 5.3 Conclusión del Curso
Si has seguido estos pasos y aprobado los pull requests/modificaciones del Agente, ahora tienes un Sistema de Gestión de Inventario funcional corriendo localmente.

### **¿Qué acabas de hacer?**
Has fungido como puente entre las herramientas y el código. Defines reglas de arquitectura, provees requisitos funcionales en lenguaje natural, auditas en busca de fallos de seguridad y ordenas pruebas en entornos de contenedores locales, todo sin, necesariamente, escribir tú mismo la lógica. ¡Felicidades, eres un desarrollador del futuro!

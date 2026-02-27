# 🤖 Agent Context & Hints (Reglas del Proyecto)

Este archivo contiene reglas críticas y directrices de entorno que CUALQUIER agente de IA debe leer antes de escribir código en este repositorio.

## 1. Stack Backend (Node.js + TypeScript)
- **Módulos:** Se debe utilizar estrictamente **ECMAScript Modules (ESM)**.
- **package.json:** El backend siempre debe inicializarse con `"type": "module"`.
- **tsconfig.json:** La configuración del compilador debe utilizar `"module": "NodeNext"` y `"moduleResolution": "NodeNext"`.
- **Imports:** Todas las importaciones relativas locales en los archivos TypeScript deben terminar en `.js` explícitamente (Ej: `import { Service } from './service.js';`).
- **Scripts de Ejecución:** Asegúrate siempre de configurar los scripts `"dev"` (usando `tsx --watch src/index.ts`), `"build"` (`tsc`) y `"start"` (`node dist/index.js`) funcionales en el `package.json`.

## 2. Stack Frontend (Next.js)
- Utiliza **App Router** (`/app` directory) de manera obligatoria. No utilices el antiguo Pages Router.
- Los componentes deben ser Server Components por defecto. Usa `"use client"` estrictamente solo en componentes interactivos en las hojas del árbol DOM.

## 3. Código Resiliente e Infraestructura
- **Docker:** Las variables de entorno en el `docker-compose.yml` deben corresponder exactamente con el `.env` que se espera que lea Node.js.
- **Rutas Relativas:** Todo el código genreal debe ubicarse estrictamente bajo `/app-workspace`. NO alteres archivos base en el directorio `/docs` a menos que se te pida explícitamente revisar plantillas.
## 4. Bitácora de Decisiones y Cambios
- **Registro Continuo:** Cuando realices un cambio arquitectónico crítico, actualices una dependencia mayor, o resuelvas un bug complejo (como un conflicto de imports), debes documentarlo brevemente en un archivo `CHANGELOG.md` o `ARCHITECTURE.md` dentro de `/app-workspace`. 
- **Propósito:** Esto sirve como "memoria a largo plazo" (Context Window anchor) para que ni tú ni futuros agentes u humanos pierdan el hilo de por qué se tomó una decisión técnica en rondas de prompting anteriores.

*(Si estás leyendo esto como IA, asume estas reglas de inmediato y no pidas confirmación sobre el estándar de módulos ECMAScript, aplícalo directamente).*

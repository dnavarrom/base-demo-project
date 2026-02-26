# 1. Setup Inicial y Especificación del Stack Técnico

Como Director de Ingeniería, lo primero que debes asegurar es tener las herramientas básicas instaladas en tu máquina y darle directrices claras al Agente sobre el Stack Tecnológico.

## 1.1 Preparación del Entorno (Human Task)

Asegúrate de instalar las siguientes dependencias según tu sistema operativo:

### Para macOS (ARM/Intel):
Abre tu terminal y ejecuta (usando Homebrew):
```bash
# Instalar Homebrew si no lo tienes: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install node
brew install --cask docker
brew install git
```

### Para Windows:
Abre PowerShell como administrador (se recomienda usar WSL2 o Winget):
```powershell
winget install OpenJS.NodeJS
winget install Docker.DockerDesktop
winget install Git.Git
```

> **Verificación:** Ejecuta `node -v`, `npm -v` y `docker --version` en tu terminal para validar.

## 1.2 Configuración del IDE y el Agente
Si estás usando Visual Studio Code, Cursor, o Windsurf, asegúrate de tener una extensión de asistente de código (como Antigravity, GitHub Copilot, Cline, etc.) habilitada y con acceso completo al contexto del proyecto (workspace).

## 1.3 El Prompt de Inicialización (Agent Task)

Abre el chat con tu Agente IA y **copia y pega el siguiente prompt**. Esto establecerá el "cerebro" del agente y creará la base del proyecto en la carpeta de código.

---
### ✂️ Copiar y Pegar al Agente IA:

> **Actúa como mi Tech Lead Senior y Arquitecto de Software.** Vamos a construir una aplicación web End-to-End. Todo el código de la aplicación, configuraciones y empaquetados deben crearse estrictamente dentro del subdirectorio `/app-workspace` relativo a la raíz de este proyecto. 
> 
> **Stack Técnico Obligatorio:**
> *   **Lenguaje:** TypeScript estricto.
> *   **Backend:** Node.js.
> *   **Despliegue/Testing Local:** Docker y Docker Compose. (No asumas qué base de datos usaremos hasta que leas los requerimientos).
> *   **Gestor de paquetes:** `npm`.
> 
> **Tu primera tarea:**
> 1. Asegúrate de que exista la carpeta `/app-workspace`. 
> 2. Inicializa un proyecto de Node vacío dentro de esa carpeta (`package.json`, `tsconfig.json` base).
> 3. Escribe un archivo `README.md` dentro de `/app-workspace` que resuma el stack técnico definido.
> 
> No escribas lógica de negocio todavía. Dime cuándo lo hayas hecho para que yo revise el entorno.
---

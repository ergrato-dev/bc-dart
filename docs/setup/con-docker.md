# 🐳 Configuración con Docker

Docker cubre el **100% del flujo** de este bootcamp: `dart run`, `dart test`, `dart analyze`,
`dart format`. A diferencia de `bc-flutter` (donde Docker no puede renderizar en un
emulador/simulador), un programa de consola en Dart no tiene esa limitación — todo corre igual
dentro del contenedor que en el host.

## 📋 Requisitos Previos

| Herramienta | Versión mínima | Verificar |
|-------------|---------------|-----------|
| Docker | 27.0+ | `docker --version` |
| Docker Compose | 2.31+ | `docker compose version` |
| Git | 2.40+ | `git --version` |

---

## 1. Instalar Docker

### Fedora / RHEL

```bash
sudo dnf install docker docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
# Cierra sesión y vuelve a entrar para que el grupo tenga efecto
```

### Ubuntu / Debian

```bash
sudo apt update
sudo apt install docker.io docker-compose-v2
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
```

### macOS

```bash
# Docker Desktop desde https://docker.com/products/docker-desktop
# o Homebrew:
brew install --cask docker
```

### Windows

Docker Desktop desde [docker.com](https://docker.com/products/docker-desktop). Requiere **WSL2**.

---

## 2. Verificar la Instalación

```bash
docker --version
docker compose version
docker run --rm hello-world
```

---

## 3. Clonar el Repositorio

```bash
git clone https://github.com/ergrato-dev/bc-dart.git
cd bc-dart
```

---

## 4. Validar el Proyecto Raíz

```bash
docker compose run --rm dart dart --version
```

## 5. Trabajar en un Proyecto Semanal

Cada `3-proyecto/starter/` tiene su propio `Dockerfile`/`docker-compose.yml`:

```bash
cd bootcamp/week-06-genericos_y_pattern_matching/3-proyecto/starter
docker compose run --rm dart dart pub get
docker compose run --rm dart dart analyze
docker compose run --rm dart dart test
docker compose run --rm dart dart run
```

---

## 6. Comandos del Día a Día

```bash
docker compose run --rm dart dart format .   # formateo
docker compose run --rm dart dart analyze    # análisis estático
docker compose run --rm dart dart test       # unit tests
docker compose run --rm dart dart run        # ejecutar el programa
docker compose run --rm dart bash             # shell interactiva
docker compose down -v                          # reset completo (borra pub-cache)
```

---

## ❓ Resolución de Problemas

### `permission denied` al ejecutar docker

```bash
sudo usermod -aG docker $USER
newgrp docker
```

### Imagen desactualizada

```bash
docker compose pull
docker compose build --no-cache
```

### Archivos generados (`.dart_tool/`, `build/`) quedan como propietario `root`

El contenedor corre como `root` por defecto, así que `.dart_tool/` y `build/` generados dentro
del volumen montado quedan con dueño `root` en tu máquina. Corrígelo con:

```bash
docker compose run --rm dart chown -R "$(id -u):$(id -g)" /app
```

> Ambos están en `.gitignore`, así que esto no afecta a git — solo a permisos locales.

---

→ Volver a [setup/README.md](README.md)

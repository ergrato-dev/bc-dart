# 💻 Configuración del SDK Local (Dart)

Instalación directa del Dart SDK en el host — sin contenedor. A diferencia de Flutter, Dart no
requiere Android Studio, Xcode ni emulador/simulador: es un único SDK, sin toolchain móvil.

## 📋 Requisitos Previos

| Herramienta | Notas |
|-------------|-------|
| Dart SDK (canal stable) | `dart --version` debe responder sin errores |
| VS Code | Recomendado, con la extensión `Dart-Code.dart-code` |

## 1. Instalar Dart

Sigue la guía oficial para tu sistema operativo: https://dart.dev/get-dart

```bash
dart --version
```

## 2. Clonar y Ejecutar

```bash
git clone https://github.com/ergrato-dev/bc-dart.git
cd bc-dart/bootcamp/week-01-fundamentos_dart_y_entorno/3-proyecto/starter
dart pub get
dart run
```

## 3. Verificar Coherencia con la Versión Pineada del Curso

```bash
dart --version
```

Compara contra la versión documentada en [docs/stack-versions.md](../stack-versions.md).

## 4. Formatear y Analizar

```bash
dart format .
dart analyze
dart test
```

---

→ Volver a [setup/README.md](README.md)

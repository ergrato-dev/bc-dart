# 📦 Versiones del Stack — Bootcamp Dart

Versiones de referencia para la primera cohorte. Se fijan al iniciar cada cohorte y no se
actualizan a mitad de curso (evita romper ejemplos ya publicados).

## Core

| Tecnología | Versión | Notas |
|---|---|---|
| Dart | canal stable vigente | `dart --version` |
| Docker | 27+ | Container runtime |
| Docker Compose | 2.31+ | Orquestación |

> ⚠️ Igual que `bc-flutter`, aquí **no fijamos un número de versión exacto por adelantado**: el
> canal `stable` de Dart cambia con frecuencia y una versión hardcodeada hoy puede no existir ya
> al iniciar la cohorte. El instructor debe correr `dart --version` el primer día de clase y
> documentar el resultado exacto aquí antes de generar el contenido de la semana 1.

## Paquetes por fase

| Fase | Paquete | Versión pineada | Rol |
|---|---|---|---|
| Testing (S9) | `test` | por confirmar en pub.dev al iniciar cohorte | Framework de testing unitario del SDK |
| Testing (S9) | `mockito` o `mocktail` | por confirmar en pub.dev al iniciar cohorte | Mocking en tests |
| Tooling (S9) | `args` | por confirmar en pub.dev al iniciar cohorte | Parseo de flags/argumentos de CLI |
| Tooling (S9) | `path` | por confirmar en pub.dev al iniciar cohorte | Manipulación de rutas multiplataforma |
| Lint | `lints` / `dart_code_metrics` | por confirmar en pub.dev al iniciar cohorte | Reglas de análisis estático (`analysis_options.yaml`) |

## Política de pineo

- Paquetes **core del curso** (los usados en teoría/prácticas/proyectos): versión exacta en el
  `pubspec.yaml` de referencia del instructor (sin `^`), para reproducibilidad entre cohortes.
- Paquetes de **desarrollo/tooling** (`lints`, etc.): pueden usar rango de compatibilidad
  estándar de `pub`.
- Actualizar esta tabla cada vez que se fije una versión — no dejarla en "canal stable vigente"
  una vez arrancada la cohorte.

## Calendario de auditoría

- Auditoría de dependencias (`dart pub outdated`, avisos de `pub.dev`) al inicio de cada
  cohorte, antes de generar contenido nuevo.
- Revisión de CVEs conocidos en paquetes core — documentar hallazgos aquí si aplica, siguiendo
  el mismo formato que `bc-fastapi/docs/dependency-security-policy.md`.

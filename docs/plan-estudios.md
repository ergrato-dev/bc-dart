# 🗓️ Plan de Estudios — Bootcamp Dart Zero to Hero

10 semanas · 60 horas · 6h/semana · Evaluación 30/40/30 por semana (mínimo 70% c/u)

## Tabla de fases

| Fase | Semanas | Horas | Temas principales |
|---|---|---|---|
| 1. Fundamentos del Lenguaje | 1-2 | 12h | Entorno/tooling, variables, null safety, control de flujo, funciones |
| 2. POO y Tipos Avanzados | 3-6 | 24h | Colecciones/iterables, clases, herencia/mixins/extensiones, genéricos, records, pattern matching, sealed classes |
| 3. Manejo de Errores y Asincronía | 7-8 | 12h | Excepciones, patrón Result, Future/async/await, Streams, isolates |
| 4. Herramientas y Proyecto Final | 9-10 | 12h | Testing, paquetes/pub, JSON, CLI apps, proyecto puente a bc-flutter |
| **Total** | **10** | **60h** | |

## Temario semana a semana

| # | Carpeta | Tema | Conceptos clave |
|---|---|---|---|
| 01 | `week-01-fundamentos_dart_y_entorno` | Fundamentos de Dart y Entorno | SDK/tooling (`dart run/format/analyze/doc`), `var/final/const`, tipos, null safety (`?`,`??`,`??=`,`!`,`late`) |
| 02 | `week-02-control_de_flujo_y_funciones` | Control de Flujo y Funciones | if/switch (statement + expression), loops, funciones (posicionales/nombrados/opcionales), closures, arrow functions |
| 03 | `week-03-colecciones_e_iterables` | Colecciones e Iterables | `List/Set/Map`, collection-if/for, spread, funcionales (`map/where/fold/reduce`) |
| 04 | `week-04-poo_clases_y_constructores` | POO: Clases y Constructores | Clases, constructores (nombrados/const/factory), getters/setters, miembros estáticos |
| 05 | `week-05-herencia_mixins_y_extensiones` | Herencia, Mixins y Extensiones | Herencia, clases abstractas, `implements`, mixins, extension methods/types |
| 06 | `week-06-genericos_y_pattern_matching` | Genéricos y Pattern Matching | Genéricos, records, pattern matching (`switch` + destructuring), sealed classes |
| 07 | `week-07-manejo_de_errores_y_excepciones` | Manejo de Errores y Excepciones | try/catch/finally, excepciones custom, patrón Result/Either, `assert` |
| 08 | `week-08-asincronia_futures_streams_isolates` | Asincronía: Futures, Streams e Isolates | `Future/async/await`, `Stream` (single-sub/broadcast, `async*`), errores async, `Isolate` básico |
| 09 | `week-09-paquetes_testing_y_tooling` | Paquetes, Testing y Tooling | pub.dev/pubspec, `dart test` (unit+mocking), JSON, `dart:io`, paquete `args` |
| 10 | `week-10-proyecto_final_arquitectura_y_puente_a_flutter` | Proyecto Final: Arquitectura y Puente a Flutter | Capstone (solo `3-proyecto/`+`5-glosario/`): capas domain/data, repository pattern, DI, state-notifier puro |

> Semana 10 no introduce teoría ni ejercicios nuevos: consolida un paquete Dart puro
> (`domain/` + `data/` + `state/` + tests) directamente reutilizable como capa de negocio bajo
> `bc-flutter/week-10-clean_architecture_y_bloc` — sin ningún import de Flutter.

## Origen del temario

Nace como bootcamp puente hacia `bc-flutter` (mismo patrón "lenguaje puente → framework" que
`bc-flutter` documenta para sí mismo respecto de otros bootcamps del catálogo, ej. TypeScript
antes de React). `bc-flutter/week-01-fundamentos_dart_y_entorno` ya cubre una introducción
autocontenida de 16h a Dart — este bootcamp no la reemplaza ni depende de ella: va mucho más
profundo (genéricos, records/pattern matching, sealed classes, isolates, testing, packaging) de
lo que esas 16h introductorias cubren, y ambos repos son completables de forma independiente.

Calibrado contra los bootcamps hermanos del catálogo: `bc-flutter` (19 semanas / 304h, framework
móvil completo, Dart ocupa solo 1 semana dentro de él) y `bc-fastapi` (16 semanas / 96h,
framework backend completo). Al ser alcance de **solo lenguaje**, sin capa de framework, la
duración es proporcionalmente más corta que ambos.

## Dominios anticopia

Este repo no define su propio catálogo de dominios — reutiliza el catálogo compartido de
`bc-sql/scripts/assign_domains.py` (150 dominios, 15 reservados para ejemplos), asignado y
trackeado por la app `sena/eval-semanal`. El dominio canónico usado en toda la teoría/ejemplos
de este repo es **Biblioteca** (nunca asignado a un estudiante).

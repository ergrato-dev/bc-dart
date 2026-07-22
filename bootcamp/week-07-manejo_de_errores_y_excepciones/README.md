# Semana 07 — Manejo de Errores y Excepciones

> **Fase 3 — Manejo de Errores y Asincronía** | Semana 7 de 10 | ⏱️ 6 horas

Primera semana de la Fase 3: capturar y clasificar excepciones, declarar las propias con
contexto, y una estrategia moderna para fallos esperados de negocio — el patrón `Result`
construido sobre `sealed class` y `switch` exhaustivo de la semana 6 — antes de entrar a
asincronía.

## 🎯 Objetivos de aprendizaje

Al finalizar esta semana, el estudiante será capaz de:

- [ ] Capturar excepciones por tipo con `on`, usar `finally` y relanzar con `rethrow`
- [ ] Declarar una excepción propia con contexto (`implements Exception`) y `toString()` legible
- [ ] Modelar un fallo esperado de negocio con `Result<T>` sellado y consumirlo con `switch`
- [ ] Usar `assert` para invariantes internas y distinguirlo de la validación de datos externos

## 📚 Requisitos previos

- [Semana 06 — Genéricos y Pattern Matching](../week-06-genericos_y_pattern_matching/README.md)
  completada (`sealed class`, `switch` exhaustivo y genéricos son la base del patrón `Result`)
- Dart SDK local (`dart --version` funcionando) y/o Docker

## 🗂️ Estructura de la semana

| Carpeta           | Contenido                    | Tiempo |
| ----------------- | ---------------------------- | ------ |
| `1-teoria/`       | Material teórico             | 2h     |
| `2-practicas/`    | Ejercicios guiados           | 2h     |
| `3-proyecto/`     | Proyecto integrador          | 2h     |

## 📝 Contenidos

### Teoría

1. [Try, Catch y Finally](1-teoria/01-try-catch-finally.md)
2. [Excepciones Personalizadas](1-teoria/02-excepciones-custom.md)
3. [El Patrón Result](1-teoria/03-patron-result.md)
4. [Assert y Estrategia de Errores](1-teoria/04-assert-y-estrategia-de-errores.md)

### Prácticas

1. [Ejercicio 01 — Try/Catch y Excepciones Personalizadas](2-practicas/ejercicio-01-try-catch-y-excepciones-custom/README.md)
2. [Ejercicio 02 — Patrón Result y Assert](2-practicas/ejercicio-02-patron-result-y-assert/README.md)

### Proyecto

[Validador con Result y Excepciones Personalizadas](3-proyecto/README.md) — un `ItemRepository`
que lanza una excepción propia para un caso excepcional real, y un `ItemValidator` que modela
reglas de negocio como `ValidationResult` sellado, consumido con `switch` exhaustivo.

## ⏱️ Distribución del tiempo (6 horas)

| Actividad  | Tiempo | Descripción                |
| ---------- | ------ | --------------------------- |
| Teoría     | 2h     | Lectura y ejemplos          |
| Prácticas  | 2h     | Ejercicios guiados          |
| Proyecto   | 2h     | Implementación propia       |

## 📌 Entregables

- [ ] Ejercicios completados (prácticas descomentadas y funcionando)
- [ ] Proyecto adaptado al dominio asignado
- [ ] `dart analyze` sin errores (verificable con Docker)
- [ ] Programa ejecutándose por consola con `dart run bin/main.dart`

## 🔗 Navegación

[← Semana 06 — Genéricos y Pattern Matching](../week-06-genericos_y_pattern_matching/README.md) | [Semana 08 — Asincronía: Futures, Streams e Isolates →](../week-08-asincronia_futures_streams_isolates/README.md)

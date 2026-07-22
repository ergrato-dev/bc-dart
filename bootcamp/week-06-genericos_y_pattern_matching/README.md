# Semana 06 — Genéricos y Pattern Matching

> **Fase 2 — POO y Tipos Avanzados** | Semana 6 de 10 | ⏱️ 6 horas

Cierre de la Fase 2: código reutilizable con seguridad de tipos (genéricos), agrupar datos sin
declarar clases desechables (records), y decidir con base en la forma de un valor en vez de
cadenas de `if/else` (pattern matching + sealed classes) — el arsenal necesario antes de manejo
de errores y asincronía.

## 🎯 Objetivos de aprendizaje

Al finalizar esta semana, el estudiante será capaz de:

- [ ] Declarar clases y métodos genéricos, y acotarlos con `T extends X` (bounded generics)
- [ ] Crear y desestructurar records posicionales y con campos nombrados
- [ ] Escribir un `switch` expression con patrones lógicos, de objeto, de lista y guardas `when`
- [ ] Modelar una jerarquía de resultados con `sealed class` y consumirla con `switch` exhaustivo

## 📚 Requisitos previos

- [Semana 05 — Herencia, Mixins y Extensiones](../week-05-herencia_mixins_y_extensiones/README.md)
  completada
- Dart SDK local (`dart --version` funcionando) y/o Docker

## 🗂️ Estructura de la semana

| Carpeta           | Contenido                    | Tiempo |
| ----------------- | ---------------------------- | ------ |
| `1-teoria/`       | Material teórico             | 2h     |
| `2-practicas/`    | Ejercicios guiados           | 2h     |
| `3-proyecto/`     | Proyecto integrador          | 2h     |

## 📝 Contenidos

### Teoría

1. [Genéricos Básicos](1-teoria/01-generics-basicos.md)
2. [Records](1-teoria/02-records.md)
3. [Pattern Matching](1-teoria/03-pattern-matching.md)
4. [Sealed Classes](1-teoria/04-sealed-classes.md)

### Prácticas

1. [Ejercicio 01 — Genéricos y Records](2-practicas/ejercicio-01-genericos-y-records/README.md)
2. [Ejercicio 02 — Pattern Matching y Sealed Classes](2-practicas/ejercicio-02-pattern-matching-y-sealed/README.md)

### Proyecto

[Repositorio Genérico con Resultados Sellados](3-proyecto/README.md) — integra un
`Repository<T>` acotado, una jerarquía `sealed` para el resultado de la búsqueda, `switch`
exhaustivo para consumirlo, y un `record` con nombre para el resumen del catálogo.

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

[← Semana 05 — Herencia, Mixins y Extensiones](../week-05-herencia_mixins_y_extensiones/README.md) | [Semana 07 — Manejo de Errores y Excepciones →](../week-07-manejo_de_errores_y_excepciones/README.md)

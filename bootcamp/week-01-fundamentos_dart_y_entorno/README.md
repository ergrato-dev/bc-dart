# Semana 01 — Fundamentos de Dart y Entorno

> **Fase 1 — Fundamentos del Lenguaje** | Semana 1 de 10 | ⏱️ 6 horas

Primera semana del bootcamp: entorno, tooling y las bases del lenguaje — variables, tipos y
null safety. Todo lo que sigue se apoya en esto.

## 🎯 Objetivos de aprendizaje

Al finalizar esta semana, el estudiante será capaz de:

- [ ] Configurar y validar su entorno de trabajo (SDK local y/o Docker)
- [ ] Usar `dart run`, `dart format`, `dart analyze` y `dart doc` con criterio
- [ ] Declarar variables con `var`/`final`/`const` y justificar cuál usar en cada caso
- [ ] Reconocer cuándo Dart infiere un tipo y por qué evitar `dynamic` salvo caso justificado
- [ ] Aplicar null safety (`?`, `?.`, `??`, `??=`, `!`, `late`) sin recurrir a `!` por defecto

## 📚 Requisitos previos

- Programación básica (variables, tipos, condicionales) en cualquier otro lenguaje — no
  requiere Dart previo
- Dart SDK local (`dart --version` funcionando) y/o Docker — ver
  [docs/setup/README.md](../../docs/setup/README.md)

## 🗂️ Estructura de la semana

| Carpeta           | Contenido                    | Tiempo |
| ----------------- | ---------------------------- | ------ |
| `1-teoria/`       | Material teórico             | 2h     |
| `2-practicas/`    | Ejercicios guiados           | 2h     |
| `3-proyecto/`     | Proyecto integrador          | 2h     |

## 📝 Contenidos

### Teoría

1. [Introducción a Dart y al Entorno de Trabajo](1-teoria/01-introduccion-dart-y-entorno.md)
2. [Variables, Tipos y Modificadores](1-teoria/02-variables-y-tipos.md)
3. [Null Safety](1-teoria/03-null-safety.md)

### Prácticas

1. [Ejercicio 01 — Variables y Tipos](2-practicas/ejercicio-01-variables-y-tipos/README.md)
2. [Ejercicio 02 — Null Safety](2-practicas/ejercicio-02-null-safety/README.md)

### Proyecto

[Ficha de Dominio en Consola](3-proyecto/README.md) — integra variables, tipos y null safety
sobre el dominio único asignado.

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
- [ ] Programa ejecutándose por consola con `dart run`

## 🔗 Navegación

← (primera semana) | [Semana 02 — Control de Flujo y Funciones →](../week-02-control_de_flujo_y_funciones/README.md)

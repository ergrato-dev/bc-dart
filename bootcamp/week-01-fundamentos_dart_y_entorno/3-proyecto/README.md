# Proyecto Semana 01 — Ficha de Dominio en Consola

> Un programa Dart que declara e imprime la ficha de un elemento de tu dominio, usando
> exclusivamente lo visto esta semana: variables, tipos y null safety.

## 🎯 Objetivo

Modelar UN elemento de tu dominio asignado usando variables con el modificador correcto
(`var`/`final`/`const`), al menos un dato nullable manejado con `??`, y presentar el resultado
con interpolación de strings.

> 📌 A propósito, este proyecto **no usa funciones propias, clases ni colecciones** — eso llega
> en las próximas semanas. Todo el programa vive dentro de `main()`.

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía
`sena/eval-semanal`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## ✅ Requisitos Funcionales (Adaptables a tu dominio)

1. Al menos 4 variables describiendo un elemento de tu dominio, cada una con el modificador
   correcto (`final` para datos fijos tras asignarse, `const` para un literal de negocio
   conocido en compilación, `var` solo si de verdad se reasigna)
2. Al menos 1 variable de tipo nullable (`?`) que represente un dato que puede legítimamente no
   existir en tu dominio
3. Uso de `??` para dar un valor por defecto legible a esa variable nullable al imprimirla
4. Una "ficha" impresa por consola con interpolación de strings, mínimo 4 líneas de datos

## 💡 Ejemplos de Adaptación por Dominio

| Dominio            | Entidad principal | Variable nullable de ejemplo |
| -------------------- | ------------------ | ------------------------------ |
| 📖 Biblioteca (ej.)  | Libro               | `DateTime? dueDate` (fecha de devolución, si está prestado) |
| 💊 Farmacia          | Medicamento          | `DateTime? expirationDate` |
| 🏋️ Gimnasio          | Miembro              | `DateTime? renewalDate` |
| 🍽️ Restaurante       | Platillo              | `double? discountPrice` |

## 🚀 Cómo ejecutar

```bash
cd starter
dart pub get
dart run
```

## 🐳 Validar con Docker

```bash
docker compose run --rm dart dart analyze
```

## 🛠️ Entregables

1. `starter/bin/main.dart` completo, adaptado a tu dominio
2. Programa ejecutable con `dart run` sin errores ni excepciones
3. `dart analyze` sin errores
4. README de este proyecto actualizado con una línea describiendo tu dominio

## 📊 Criterios de Evaluación

Ver [../rubrica-evaluacion.md](../rubrica-evaluacion.md)

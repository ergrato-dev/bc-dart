# Proyecto Semana 02 — Reporte de Lote en Consola

> Un programa Dart que genera un reporte de 3 "eventos" de tu dominio, usando exclusivamente lo
> visto esta semana: condicionales, bucles y funciones (posicionales/nombrados/opcionales,
> arrow functions).

## 🎯 Objetivo

Implementar funciones reutilizables que clasifiquen y formateen eventos de tu dominio
(`switch` statement/expression), y usarlas dentro de un `for` para imprimir un reporte de 3
eventos con datos distintos.

> 📌 A propósito, este proyecto **no usa clases ni colecciones (`List`/`Map`)** — esos temas
> llegan en las próximas semanas (POO en semana 4, colecciones en semana 3). Los 3 eventos se
> generan con literales dentro del `for`, seleccionados con un `switch`, no almacenados en una
> lista.

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía
`sena/eval-semanal`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## ✅ Requisitos Funcionales (Adaptables a tu dominio)

1. Una función `String eventName(int code)` que use `switch` **expression** para mapear un
   código de evento (`1`, `2`, `3`) a un nombre legible de tu dominio, exhaustivo con `_`
2. Una función `String formatEvent({required int code, required String detail, String? note})`
   con parámetros nombrados (uno opcional con `??` para su valor por defecto al imprimir), que
   arme la línea de reporte usando `eventName`
3. Una función `void printLine(String text)` como **arrow function**, que imprima la línea con
   un prefijo visual
4. Un `for` que recorra 3 iteraciones, con un `switch` **statement** sobre el índice que
   seleccione los datos literales de cada evento (código, detalle y, en al menos uno, una nota),
   llamando a `formatEvent` y `printLine`
5. *(Bonus opcional)* una función-fábrica que retorne un **closure** contador, usada para
   numerar las líneas del reporte en vez de usar el índice del `for` directamente

## 💡 Ejemplos de Adaptación por Dominio

Los 3 códigos de evento son siempre **Alta (1) / Renovación (2) / Baja (3)** — solo cambia qué
representan en tu dominio:

| Dominio             | Entidad     | Alta (1)                 | Renovación (2)             | Baja (3)                  |
| --------------------- | ------------ | -------------------------- | ---------------------------- | ---------------------------- |
| 📖 Biblioteca (ej.)   | Préstamo      | Nuevo libro registrado      | Renovación de préstamo        | Retiro del catálogo          |
| 💊 Farmacia           | Medicamento   | Ingreso de lote              | Reabastecimiento              | Vencimiento de lote          |
| 🏋️ Gimnasio           | Miembro       | Inscripción                  | Renovación de membresía        | Cancelación                  |
| 🍽️ Restaurante        | Pedido        | Nuevo pedido                 | Pedido repetido                | Pedido cancelado             |

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

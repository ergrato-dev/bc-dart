# Proyecto Semana 03 — Catálogo de Elementos en Lista

> Un programa Dart que gestiona un catálogo de al menos 4 elementos de tu dominio con
> `List<Map<String, String>>`, y lo procesa con `where`, `map`, `fold`, collection-if/for y
> spread.

## 🎯 Objetivo

Modelar tu catálogo como una `List<Map<String, String>>` (sin clases todavía — eso llega en la
semana 4) y usar operadores funcionales para filtrar, transformar y resumir su contenido.

> 📌 A propósito, este proyecto **no usa clases** — cada elemento del catálogo es un
> `Map<String, String>` con claves fijas. Modelar con clases propias llega en la semana 4.

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía
`sena/eval-semanal`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## ✅ Requisitos Funcionales (Adaptables a tu dominio)

1. Un `List<Map<String, String>>` con al menos 4 elementos de tu dominio, cada uno con las
   claves `name`, `status` (dos valores posibles, ej. `'Disponible'`/`'Agotado'`) y `note`
   (cadena vacía `''` si no aplica)
2. Una lista de nombres disponibles construida encadenando `.where` (por `status`) y `.map`
   (extrae `name`) sobre el catálogo
3. Un resumen de líneas de texto construido con **collection-for** recorriendo el catálogo, e
   incluyendo la `note` de cada elemento solo si no está vacía (**collection-if**)
4. Un catálogo "extendido" que combine tu lista original con al menos un elemento adicional
   usando el operador **spread** (`...`)
5. Un conteo total de elementos disponibles calculado con `.where(...).length` o `.fold`

## 💡 Ejemplos de Adaptación por Dominio

| Dominio             | `name`        | `status` (2 valores)         | `note` (ejemplo)              |
| --------------------- | -------------- | ------------------------------ | -------------------------------- |
| 📖 Biblioteca (ej.)   | Título del libro | `Disponible` / `Agotado`      | `'reservado por otro usuario'`   |
| 💊 Farmacia           | Medicamento     | `En stock` / `Agotado`         | `'vence en 30 días'`             |
| 🏋️ Gimnasio           | Miembro         | `Activo` / `Inactivo`          | `'pago pendiente'`               |
| 🍽️ Restaurante        | Platillo        | `Disponible` / `Agotado`       | `'ingrediente por confirmar'`    |

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

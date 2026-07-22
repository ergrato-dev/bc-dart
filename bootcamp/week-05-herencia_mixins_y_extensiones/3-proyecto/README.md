# Proyecto Semana 05 — Catálogo Polimórfico

> Un programa Dart que modela dos variantes de tu dominio con una clase abstracta común
> (`extends` + polimorfismo), un mixin aplicado solo a la variante especial, y una extensión
> sobre `List` para resumir el catálogo.

## 🎯 Objetivo

Diseñar una jerarquía con una clase abstracta base y dos subclases concretas, aplicar un mixin
a una de ellas, y agregar una extensión sobre `List<CatalogItem>` que reutilice `where`/`fold`
de la semana 3.

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía
`sena/eval-semanal`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## ✅ Requisitos Funcionales (Adaptables a tu dominio)

1. Clase abstracta `CatalogItem` en `lib/models/catalog_item.dart` con `id`, `name`, `stock` y
   un método abstracto `describe()`, más un getter `summary` que combine `name`, `describe()` y
   `stock`
2. Subclase `StandardItem` que extiende `CatalogItem` e implementa `describe()`
3. Subclase `SpecialItem` que extiende `CatalogItem` **y** aplica un `mixin Trackable` (declarado
   con `on CatalogItem` en el mismo archivo) que agrega un método `logAccess()`
4. Extensión `CatalogListX` en `lib/extensions/catalog_item_extensions.dart` sobre
   `List<CatalogItem>`, con:
   - `totalStock` (getter, usa `.fold`)
   - `lowStock` (getter, usa `.where` para los elementos con `stock == 0`)
5. `bin/main.dart` que construya una `List<CatalogItem>` mezclando ambas subclases, imprima cada
   `summary` (polimorfismo), llame `logAccess()` solo en los `SpecialItem` (con `is`), y use
   `totalStock`/`lowStock` de la extensión

## 💡 Ejemplos de Adaptación por Dominio

| Dominio             | `StandardItem`      | `SpecialItem` (con `Trackable`)      |
| --------------------- | --------------------- | --------------------------------------- |
| 📖 Biblioteca (ej.)   | `Book`                 | `RareEdition` (edición rara, se rastrea) |
| 💊 Farmacia           | `Medication`           | `ControlledMedication` (medicamento controlado) |
| 🏋️ Gimnasio           | `RegularPlan`          | `VipPlan` (plan premium, se rastrea el acceso) |
| 🍽️ Restaurante        | `RegularDish`          | `ChefSpecial` (plato especial del chef) |

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

1. `starter/lib/models/catalog_item.dart` y `starter/lib/extensions/catalog_item_extensions.dart`
   completos
2. `starter/bin/main.dart` ejecutable con `dart run` sin errores ni excepciones
3. `dart analyze` sin errores
4. README de este proyecto actualizado con una línea describiendo tu dominio

## 📊 Criterios de Evaluación

Ver [../rubrica-evaluacion.md](../rubrica-evaluacion.md)

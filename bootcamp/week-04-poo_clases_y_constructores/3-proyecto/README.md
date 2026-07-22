# Proyecto Semana 04 — Catálogo de Objetos con Clases

> Un programa Dart que modela tu dominio con una clase `Item` (constructores normal, nombrado y
> factory, getter/setter validado, campo estático) y un `ItemRepository` que la gestiona
> reutilizando `where`/`fold` de la semana 3.

## 🎯 Objetivo

Diseñar tu primera clase de dominio con los cuatro tipos de constructor que aplican (normal,
nombrado, factory), un campo privado con getter/setter validado, y un campo estático — y
gestionar una colección de instancias con una clase repositorio.

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía
`sena/eval-semanal`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## ✅ Requisitos Funcionales (Adaptables a tu dominio)

1. Clase `Item` en `lib/models/item.dart`:
   - Constructor normal con `id`, `name` y `stock` inicial
   - Constructor **nombrado** `Item.outOfStock(id, name)` que crea la instancia con `stock` en 0
   - Constructor **factory** `Item.fromRecord(Map<String, String> record)` que parsea un `Map`
     (como los de la semana 3) hacia una instancia válida
   - Campo privado `_stock` con **getter** público y **setter** que rechace valores negativos
     (lanzando `ArgumentError`)
   - Campo **estático** `Item.totalCreated`, incrementado en el cuerpo de cada constructor
   - `toString()` sobrescrito con una representación legible
2. Clase `ItemRepository` en `lib/repository/item_repository.dart`:
   - Una `List<Item>` interna con un método `add(Item item)`
   - `List<Item> availableItems()` — usa `.where` sobre `stock > 0`
   - `int totalStock()` — usa `.fold` para sumar el `stock` de todos los items
3. `bin/main.dart` que construya un repositorio con al menos 4 items usando **al menos dos
   constructores distintos**, e imprima un reporte con los disponibles, el stock total y
   `Item.totalCreated`

## 💡 Ejemplos de Adaptación por Dominio

| Dominio             | Entidad (`Item`) | `stock` representa           |
| --------------------- | ------------------ | ------------------------------- |
| 📖 Biblioteca (ej.)   | `Book`              | copias disponibles              |
| 💊 Farmacia           | `Medication`        | unidades en inventario          |
| 🏋️ Gimnasio           | `MembershipPlan`    | cupos disponibles este mes      |
| 🍽️ Restaurante        | `MenuItem`          | porciones disponibles hoy       |

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

1. `starter/lib/models/item.dart` y `starter/lib/repository/item_repository.dart` completos
2. `starter/bin/main.dart` ejecutable con `dart run` sin errores ni excepciones
3. `dart analyze` sin errores
4. README de este proyecto actualizado con una línea describiendo tu dominio

## 📊 Criterios de Evaluación

Ver [../rubrica-evaluacion.md](../rubrica-evaluacion.md)

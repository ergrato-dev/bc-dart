# Proyecto Semana 06 — Repositorio Genérico con Resultados Sellados

> Un `Repository<T>` genérico y acotado (bounded generics), que busca por id devolviendo un
> `OperationResult<T>` sellado, consumido con `switch` exhaustivo — y un resumen del catálogo
> devuelto como `record`.

## 🎯 Objetivo

Integrar los cuatro conceptos de la semana en un solo flujo: una clase genérica acotada
(`Repository<T extends Identifiable>`), un resultado modelado con `sealed class`
(`OperationResult<T>`), pattern matching exhaustivo para consumirlo, y un `record` con campos
nombrados para el resumen del catálogo.

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía
`sena/eval-semanal`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## ✅ Requisitos Funcionales (Adaptables a tu dominio)

1. `lib/models/identifiable.dart` — clase abstracta `Identifiable` con un getter `id`
2. `lib/models/item.dart` — clase `Item` que implementa `Identifiable`, con `id`, `name` y
   `quantity` (agrega mínimo 1 atributo propio de tu dominio)
3. `lib/models/operation_result.dart` — `sealed class OperationResult<T>` con dos subtipos:
   - `Found<T>` con un campo `item` de tipo `T`
   - `NotFound<T>` con un campo `id` de tipo `String`
4. `lib/repository/item_repository.dart` — `Repository<T extends Identifiable>` con:
   - `void add(T item)`
   - `OperationResult<T> findResult(String id)` — retorna `Found`/`NotFound` según corresponda
   - `({int total, int lowStock}) stats(bool Function(T) isLow)` — record con campos nombrados,
     usa `.fold`/`.where` (semana 3) sobre los items acumulados
5. `bin/main.dart` que:
   - cree un `Repository<Item>` con al menos 3 items de tu dominio
   - llame `findResult` con un id existente y uno inexistente, consumiendo el
     `OperationResult<Item>` con un `switch` **exhaustivo** (sin `_`)
   - obtenga el `record` de `stats(...)` y lo desestructure con el shorthand `:campo`
     (`final (:total, :lowStock) = ...`)

## 💡 Ejemplos de Adaptación por Dominio

| Dominio              | `Item` (ej. `Book`)        | Campo propio adicional          | `isLow` (para `stats`)       |
| ---------------------- | --------------------------- | -------------------------------- | ------------------------------ |
| 📖 Biblioteca (ej.)    | `Book`                       | `author`                          | `quantity == 0` (sin copias)    |
| 💊 Farmacia            | `Medication`                 | `expiresAt`                       | `quantity < 5` (stock bajo)     |
| 🏋️ Gimnasio            | `Member`                      | `plan`                            | `quantity == 0` (sin sesiones)  |
| 🍽️ Restaurante         | `Dish`                        | `category`                        | `quantity < 3` (pocas raciones) |

## 🚀 Cómo ejecutar

```bash
cd starter
dart pub get
dart run bin/main.dart
```

## 🐳 Validar con Docker

```bash
docker compose run --rm dart dart analyze
```

## 🛠️ Entregables

1. `starter/lib/models/identifiable.dart`, `starter/lib/models/item.dart` y
   `starter/lib/models/operation_result.dart` completos
2. `starter/lib/repository/item_repository.dart` completo
3. `starter/bin/main.dart` ejecutable con `dart run` sin errores ni excepciones
4. `dart analyze` sin errores
5. README de este proyecto actualizado con una línea describiendo tu dominio

## 📊 Criterios de Evaluación

Ver [../rubrica-evaluacion.md](../rubrica-evaluacion.md)

# Proyecto Semana 07 — Validador con Result y Excepciones Personalizadas

> Un `ItemRepository` que lanza una excepción personalizada para un caso verdaderamente
> excepcional (buscar un id que no existe), y un `ItemValidator` que modela las reglas de negocio
> como `Result<Item>` sellado — dos estrategias de error conviviendo en el mismo programa.

## 🎯 Objetivo

Integrar los cuatro conceptos de la semana: una excepción propia con contexto para un fallo
excepcional real, `try`/`catch`/`finally` para consumirla, un `assert` que protege una invariante
interna del modelo, y un `Result<Item>` sellado (consumido con `switch` exhaustivo) para validar
reglas de negocio que ocurren con frecuencia.

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía
`sena/eval-semanal`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## ✅ Requisitos Funcionales (Adaptables a tu dominio)

1. `lib/models/item.dart` — clase `Item` con `id`, `name` y `quantity`, protegida con
   `assert(quantity >= 0, ...)` en el constructor (invariante interna, no validación de negocio)
2. `lib/errors/item_not_found_exception.dart` — excepción personalizada
   (`implements Exception`) con el `id` buscado como campo y `toString()` propio
3. `lib/models/validation_result.dart` — `sealed class ValidationResult` con dos subtipos:
   - `Valid` (sin campos, el item cumple todas las reglas)
   - `Invalid` con un campo `reason` (String) — la primera regla que falló
4. `lib/repository/item_repository.dart` — con:
   - `void add(Item item)`
   - `Item findById(String id)` — **lanza** `ItemNotFoundException` si no existe (caso
     excepcional real, no una regla de negocio)
5. `lib/services/item_validator.dart` — `ValidationResult validate(Item item)` con al menos 2
   reglas de negocio (ej. `name` no vacío, `quantity` dentro de un rango razonable)
6. `bin/main.dart` que:
   - use `try`/`on ItemNotFoundException`/`finally` al buscar un id existente y uno inexistente
   - valide al menos 2 items (uno válido, uno inválido) con `validate(...)`, consumiendo el
     `ValidationResult` con un `switch` **exhaustivo** (sin `_`)

## 💡 Ejemplos de Adaptación por Dominio

| Dominio              | `Item` (ej. `Book`)  | Regla de negocio 1        | Regla de negocio 2                |
| ---------------------- | ---------------------- | --------------------------- | ------------------------------------ |
| 📖 Biblioteca (ej.)    | `Book`                  | `title` no vacío             | `quantity` (copias) no negativo       |
| 💊 Farmacia            | `Medication`            | `name` no vacío              | `quantity` (stock) máximo permitido   |
| 🏋️ Gimnasio            | `Member`                 | `name` no vacío              | `quantity` (sesiones) dentro de rango |
| 🍽️ Restaurante         | `Dish`                   | `name` no vacío              | `quantity` (porciones) razonable      |

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

1. `starter/lib/models/item.dart`, `starter/lib/errors/item_not_found_exception.dart` y
   `starter/lib/models/validation_result.dart` completos
2. `starter/lib/repository/item_repository.dart` y `starter/lib/services/item_validator.dart`
   completos
3. `starter/bin/main.dart` ejecutable con `dart run` sin errores ni excepciones sin manejar
4. `dart analyze` sin errores
5. README de este proyecto actualizado con una línea describiendo tu dominio

## 📊 Criterios de Evaluación

Ver [../rubrica-evaluacion.md](../rubrica-evaluacion.md)

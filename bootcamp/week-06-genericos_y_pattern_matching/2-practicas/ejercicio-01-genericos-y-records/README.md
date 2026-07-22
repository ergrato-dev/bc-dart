# Ejercicio 01 — Genéricos y Records

> Practicarás declarar una clase genérica, acotarla con `extends`, y usar records posicionales y
> con campos nombrados descomentando código paso a paso.

## 🎯 Objetivos

- Declarar una clase genérica `Repository<T>` y usarla con un tipo concreto
- Acotar el genérico con `T extends Identifiable` y usar el bound dentro de la clase
- Retornar y desestructurar un record posicional
- Retornar y desestructurar un record con campos nombrados (shorthand `:campo`)

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [1-teoria/](../../1-teoria/) leído completo

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: Clase genérica `Repository<T>`

```dart
final repo = Repository<Book>();
repo.add(Book('Clean Code'));
print(repo.all.first.title);
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1` (incluye la clase `Repository<T>`
y `Book` al final del archivo).

✅ **Verifica**: debe imprimir `Clean Code`.

---

## Paso 2: Bounded generics — `T extends Identifiable`

```dart
final repo = IdentifiableRepository<Book>();
repo.add(Book('Dune', 'b1'));
print(repo.findById('b1')?.title);
```

**Descomenta la sección `PASO 2`** (incluye `Identifiable`, `IdentifiableRepository<T>` y la
versión de `Book` con `id` al final del archivo).

✅ **Verifica**: debe imprimir `Dune` — `findById` puede acceder a `item.id` porque el bound
garantiza que todo `T` implementa `Identifiable`.

---

## Paso 3: Record posicional y destructuring

```dart
final (title, copies) = parseEntry('Clean Code:3');
print('$title tiene $copies copias');
```

**Descomenta la sección `PASO 3`** (incluye la función `parseEntry` al final del archivo).

✅ **Verifica**: debe imprimir `Clean Code tiene 3 copias`.

---

## Paso 4: Record con campos nombrados y shorthand `:campo`

```dart
final (:entryTitle, :entryCopies) = parseEntryNamed('Dune:5');
print('$entryTitle: $entryCopies');
```

**Descomenta la sección `PASO 4`** (incluye la función `parseEntryNamed` al final del archivo).

✅ **Verifica**: debe imprimir `Dune: 5`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 5 líneas (encabezado + 4 datos)
sin ningún error de `dart analyze`.

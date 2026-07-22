# Ejercicio 02 — Patrón Result y Assert

> Practicarás modelar un fallo esperado como valor con `Result<T>` sellado, consumirlo con
> `switch` exhaustivo, y proteger una invariante interna con `assert` descomentando código paso a
> paso.

## 🎯 Objetivos

- Declarar `Result<T>` con `sealed class` y sus variantes `Ok<T>`/`Err<T>`
- Consumir un `Result<T>` con `switch` exhaustivo (sin `_`)
- Usar `assert` para proteger una invariante interna de una clase
- Distinguir cuándo una validación debe ser `assert` y cuándo `Result`

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [Ejercicio 01](../ejercicio-01-try-catch-y-excepciones-custom/README.md) completado

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: `Result<T>` sellado — declarar `Ok`/`Err`

```dart
final result = parseAge('25');
print(result is Ok<int>);
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1` (incluye `Result<T>`, `Ok<T>`,
`Err<T>` y la función `parseAge` al final del archivo).

✅ **Verifica**: debe imprimir `true`.

---

## Paso 2: Consumir `Result<T>` con `switch` exhaustivo

```dart
print(describeAge(parseAge('25')));
print(describeAge(parseAge('abc')));
```

**Descomenta la sección `PASO 2`** (incluye la función `describeAge` al final del archivo).

✅ **Verifica**: debe imprimir `Edad válida: 25` y `Error: "abc" no es un número válido` — nota
que el `switch` no tiene rama `_`, `Result<T>` es `sealed`.

---

## Paso 3: `assert` — proteger una invariante interna

```dart
final loan = BookLoan('b1', 7);
print('Préstamo de ${loan.days} días');
```

**Descomenta la sección `PASO 3`** (incluye la clase `BookLoan` al final del archivo).

✅ **Verifica**: debe imprimir `Préstamo de 7 días` — el `assert(days > 0, ...)` del constructor
no falla porque `7` es positivo.

---

## Paso 4: Estrategia combinada — `assert` + `Result`

```dart
final book = Book('Dune', 1);
print(describeLoan(tryLoan(book)));
print(describeLoan(tryLoan(book)));
```

**Descomenta la sección `PASO 4`** (incluye `Book`, `LoanResult`, `LoanApproved`, `LoanRejected`,
`tryLoan` y `describeLoan` al final del archivo).

✅ **Verifica**: debe imprimir `Préstamo aprobado` la primera vez y
`Rechazado: Sin copias disponibles` la segunda — el libro solo tenía 1 copia.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 7 líneas (encabezado + 6 datos)
sin ningún error de `dart analyze`.

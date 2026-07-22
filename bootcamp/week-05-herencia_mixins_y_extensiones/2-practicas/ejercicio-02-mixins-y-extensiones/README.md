# Ejercicio 02 — Mixins y Extension Methods

> Practicarás declarar mixins, aplicarlos con `with`, componer varios, y agregar extension
> methods descomentando código paso a paso.

## 🎯 Objetivos

- Declarar un `mixin` y aplicarlo a una clase con `with`
- Combinar dos mixins y observar el orden de composición
- Agregar un extension method sobre un tipo existente (`String`)
- Agregar una extensión sobre un tipo genérico (`List<int>`)

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [Ejercicio 01](../ejercicio-01-herencia-y-abstractas/README.md) completado

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: Declarar un mixin y aplicarlo con `with`

```dart
final book = LoanableBook('Clean Code');
book.loan();
print(book.isOnLoan);
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1` (incluye el mixin `Loanable` y la
clase `LoanableBook` al final del archivo).

✅ **Verifica**: debe imprimir `true`.

---

## Paso 2: Combinar dos mixins — el orden importa

```dart
final book = FullFeaturedBook();
print(book.status());
```

**Descomenta la sección `PASO 2`** (incluye el mixin `Reservable` y la clase
`FullFeaturedBook` al final del archivo).

✅ **Verifica**: debe imprimir `Reservado` — `Reservable` está más a la derecha en
`with Loanable, Reservable`, así que su `status()` gana sobre el de `Loanable`.

---

## Paso 3: Extension method sobre `String`

```dart
print('clean code'.capitalize());
```

**Descomenta la sección `PASO 3`** (incluye la extensión `StringFormatting` al final del
archivo).

✅ **Verifica**: debe imprimir `Clean code`.

---

## Paso 4: Extensión sobre un tipo genérico (`List<int>`)

```dart
final copies = [3, 0, 5];
print(copies.total);
```

**Descomenta la sección `PASO 4`** (incluye la extensión `CatalogSummary` al final del
archivo).

✅ **Verifica**: debe imprimir `8`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 5 líneas (encabezado + 4 datos)
sin ningún error de `dart analyze`.

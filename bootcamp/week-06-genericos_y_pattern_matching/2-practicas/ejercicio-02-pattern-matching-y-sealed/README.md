# Ejercicio 02 — Pattern Matching y Sealed Classes

> Practicarás `switch` expression con patrones lógicos y de objeto, guardas `when`, `if-case`, y
> una jerarquía `sealed` con switch exhaustivo descomentando código paso a paso.

## 🎯 Objetivos

- Escribir un `switch` expression con patrón constante, lógico (`||`) y wildcard (`_`)
- Desestructurar un objeto en un `case` (`Clase(:final campo)`) y filtrarlo con `when`
- Declarar una `sealed class` y cubrirla con un `switch` exhaustivo (sin `_`)
- Probar un patrón puntual con `if-case`

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [Ejercicio 01](../ejercicio-01-genericos-y-records/README.md) completado

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: `switch` expression con patrón lógico y wildcard

```dart
print(describeStock(0));
print(describeStock(2));
print(describeStock(10));
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1` (incluye la función
`describeStock` al final del archivo).

✅ **Verifica**: debe imprimir `Agotado`, `Bajo stock` y `Disponible`.

---

## Paso 2: Object pattern con destructuring y guarda `when`

```dart
print(status(Book('Dune', 0)));
print(status(Book('Wired', 2)));
print(status(Book('Clean Code', 10)));
```

**Descomenta la sección `PASO 2`** (incluye `Book` y la función `status` al final del archivo).

✅ **Verifica**: debe imprimir `Dune: agotado`, `Wired: bajo stock (2)` y
`Clean Code: disponible`.

---

## Paso 3: `sealed class` con `switch` exhaustivo

```dart
print(describeResult(const Found('Clean Code')));
print(describeResult(const NotFound('xyz')));
```

**Descomenta la sección `PASO 3`** (incluye `SearchResult`, `Found`, `NotFound` y la función
`describeResult` al final del archivo).

✅ **Verifica**: debe imprimir `Encontrado: Clean Code` y `Sin resultados para "xyz"` — nota que
el `switch` de `describeResult` no tiene rama `_`: `SearchResult` es `sealed`, así que el
analyzer ya sabe que solo existen esas dos variantes.

---

## Paso 4: `if-case` — probar un patrón puntual

```dart
final Object input = ('Dune', 5);

if (input case (String title, int copies)) {
  print('$title: $copies');
} else {
  print('No coincide');
}
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: debe imprimir `Dune: 5`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 9 líneas (encabezado + 8 datos)
sin ningún error de `dart analyze`.

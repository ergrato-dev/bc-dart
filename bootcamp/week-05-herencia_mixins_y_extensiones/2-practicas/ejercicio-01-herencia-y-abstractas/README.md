# Ejercicio 01 — Herencia, Clases Abstractas e Implements

> Practicarás `extends`, `super`, clases abstractas, polimorfismo e `implements` descomentando
> código paso a paso.

## 🎯 Objetivos

- Extender una clase abstracta con `extends` e implementar su método abstracto
- Usar `super` para reenviar el constructor y para llamar al método del padre
- Tratar distintas subclases de forma polimórfica a través de una `List` del tipo base
- Adoptar un contrato con `implements`, reimplementando todos sus miembros

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [1-teoria/](../../1-teoria/) leído completo

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: Clase abstracta y `extends`

```dart
final book = Book('Clean Code');
print(book.describe());
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1` (incluye las clases `LibraryItem`
y `Book` al final del archivo). `LibraryItem` es `abstract` — no se puede instanciar
directamente, solo a través de sus subclases.

✅ **Verifica**: debe imprimir `Libro: Clean Code`.

---

## Paso 2: `super` para extender el comportamiento del padre

```dart
final magazine = Magazine('National Geographic');
print(magazine.describe());
```

**Descomenta la sección `PASO 2`** (incluye la clase `Magazine` al final del archivo).

✅ **Verifica**: debe imprimir `Elemento: National Geographic — revista` — `Magazine.describe()`
usa `super.describe()` internamente y le agrega texto.

---

## Paso 3: Polimorfismo con una `List` del tipo abstracto

```dart
final items = <LibraryItem>[Book('Dune'), Magazine('Wired')];

for (final item in items) {
  print(item.describe());
}
```

**Descomenta la sección `PASO 3`.**

✅ **Verifica**: debe imprimir `Libro: Dune` y `Elemento: Wired — revista` — cada uno ejecuta su
propia versión de `describe()`.

---

## Paso 4: `implements` — adoptar un contrato

```dart
final receipt = Receipt(15000);
print(receipt.toDisplayString());
```

**Descomenta la sección `PASO 4`** (incluye las clases `Printable` y `Receipt` al final del
archivo).

✅ **Verifica**: debe imprimir `Total: $15000.00`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 6 líneas (encabezado + 5 datos)
sin ningún error de `dart analyze`.

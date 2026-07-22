# Ejercicio 01 — Clases y Constructores

> Practicarás constructores normal, nombrado, const y factory descomentando código paso a paso.

## 🎯 Objetivos

- Declarar una clase con campos y un constructor con `this.campo`
- Agregar un constructor nombrado para un caso de uso específico
- Declarar una clase inmutable con constructor `const`
- Usar un constructor `factory` para construir desde datos crudos (`Map`)

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [1-teoria/](../../1-teoria/) leído completo

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: Constructor normal

```dart
final book = Book('Clean Code', 'Robert C. Martin', 3);
print('${book.title} — ${book.author} (${book.availableCopies})');
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1` (incluye la clase `Book` al final
del archivo).

✅ **Verifica**: debe imprimir `Clean Code — Robert C. Martin (3)`.

---

## Paso 2: Constructor nombrado

```dart
final soldOut = Book.outOfStock('1984', 'George Orwell');
print('${soldOut.title}: ${soldOut.availableCopies} copias');
```

**Descomenta la sección `PASO 2`.**

✅ **Verifica**: debe imprimir `1984: 0 copias`.

---

## Paso 3: Constructor const

```dart
const fiction = Genre('FIC', 'Ficción');
const sameFiction = Genre('FIC', 'Ficción');

print(fiction.label);
print(identical(fiction, sameFiction));
```

**Descomenta la sección `PASO 3`** (incluye la clase `Genre` al final del archivo).

✅ **Verifica**: debe imprimir `Ficción` y luego `true` (el compilador unifica ambas constantes).

---

## Paso 4: Constructor factory desde un `Map`

```dart
final fromData = Book.fromRecord({'title': 'Dune', 'author': 'Frank Herbert', 'copies': '2'});
print('${fromData.title}: ${fromData.availableCopies}');
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: debe imprimir `Dune: 2`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 6 líneas (encabezado + 5 datos)
sin ningún error de `dart analyze`.

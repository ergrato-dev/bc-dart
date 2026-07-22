# Ejercicio 02 — Getters, Setters y Miembros Estáticos

> Practicarás campos privados, getters, setters con validación y miembros estáticos
> descomentando código paso a paso.

## 🎯 Objetivos

- Encapsular un campo privado detrás de un getter
- Validar una asignación con un setter
- Usar un campo estático como contador compartido por la clase
- Usar un método estático como utilidad de la clase

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [Ejercicio 01](../ejercicio-01-clases-y-constructores/README.md) completado

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: Campo privado y getter

```dart
final book = Book('Clean Code', 3);
print(book.availableCopies);
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1` (incluye la clase `Book` al final
del archivo).

✅ **Verifica**: debe imprimir `3`.

---

## Paso 2: Setter con validación

```dart
book.availableCopies = 5;
print(book.availableCopies);

try {
  book.availableCopies = -1;
} catch (e) {
  print('Capturado: $e');
}
```

**Descomenta la sección `PASO 2`.**

✅ **Verifica**: debe imprimir `5`, y luego una línea `Capturado: ...` — el setter rechaza el
valor negativo lanzando `ArgumentError`.

---

## Paso 3: Campo estático como contador

```dart
print(Book.totalCreated);

Book('1984', 1);
Book('Dune', 2);

print(Book.totalCreated);
```

**Descomenta la sección `PASO 3`.**

✅ **Verifica**: debe imprimir `1` (por el `Book` creado en el paso 1) y luego `3` (dos libros
más creados en este paso).

---

## Paso 4: Método estático como utilidad

```dart
print(Book.isValidTitle(''));
print(Book.isValidTitle('Dune'));
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: debe imprimir `false` y luego `true`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 8 líneas (encabezado + 7 datos)
sin ningún error de `dart analyze`. El único "error" esperado es el capturado explícitamente en
el Paso 2.

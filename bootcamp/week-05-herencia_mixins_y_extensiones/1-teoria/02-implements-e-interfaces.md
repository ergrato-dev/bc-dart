# `implements` e Interfaces Implícitas

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Que **toda clase de Dart define implícitamente una interfaz**
- `implements`: adoptar un contrato sin heredar implementación
- La diferencia entre `extends` (herencia) e `implements` (contrato)
- `implements` múltiple — algo que `extends` no permite

## 📋 Conceptos Clave

### 1. En Dart, toda clase ES una interfaz implícita

```dart
class Printable {
  String toDisplayString() => 'Printable genérico';
}

class Receipt implements Printable {
  Receipt(this.total);

  final double total;

  @override
  String toDisplayString() => 'Total: \$${total.toStringAsFixed(2)}';
}
```

A diferencia de Java/TypeScript (donde `interface` es una palabra clave separada de `class`),
en Dart **cualquier clase** puede usarse como interfaz con `implements` — no existe una
declaración `interface` distinta.

### 2. `implements` obliga a reimplementar TODO, sin heredar nada

```dart
class LibraryItem {
  LibraryItem(this.title);
  final String title;
  String describe() => 'Elemento: $title';
}

class Book implements LibraryItem {
  Book(this.title); // NO se hereda el constructor de LibraryItem

  @override
  final String title; // el campo también hay que reimplementarlo

  @override
  String describe() => 'Libro: $title'; // obligatorio: implements no trae implementación
}

void main() {
  final book = Book('Clean Code');
  print(book.describe());
}
```

Con `implements`, la clase adopta el **contrato** (qué miembros debe tener) pero **ninguna**
implementación — a diferencia de `extends`, donde el `describe()` del padre estaba disponible
sin reescribirlo. Todo campo y método de la clase implementada debe reimplementarse.

> ⚠️ Este es el error más común al migrar de `extends` a `implements`: el código deja de
> compilar porque de repente faltan implementaciones que antes venían "gratis" por herencia.

### 3. `extends` vs `implements` — cuándo usar cada uno

| | `extends` | `implements` |
|---|---|---|
| Trae implementación | Sí, se hereda | No, hay que reescribir todo |
| Herencia múltiple | No (una sola clase) | Sí (varias interfaces) |
| Constructor de la base | Se puede reenviar con `super` | No aplica (no hay instancia base) |
| Úsalo cuando | Compartes comportamiento real | Solo necesitas garantizar un contrato |

### 4. `implements` múltiple — algo que `extends` no permite

```dart
class Comparable2 {
  int compareValue(Object other) => 0;
}

class Describable {
  String describe() => 'Genérico';
}

class Book implements Comparable2, Describable {
  Book(this.title, this.year);

  final String title;
  final int year;

  @override
  int compareValue(Object other) => other is Book ? year - other.year : 0;

  @override
  String describe() => '$title ($year)';
}

void main() {
  final book = Book('Dune', 1965);
  print(book.describe());
}
```

Una clase puede `implements` **varias** interfaces a la vez (separadas por coma) — algo que
`extends` no permite (Dart no tiene herencia múltiple de implementación). Esto es lo más
cercano a "interfaces múltiples" de Java/C#.

## ⚠️ Errores Comunes

- Usar `implements` esperando heredar comportamiento (como con `extends`) — hay que reimplementar
  todo, incluidos los campos
- Olvidar `@override` en un miembro que viene de una interfaz `implements` — el analyzer no lo
  exige tan explícitamente como con métodos abstractos, pero es la convención de `Effective Dart`
- Intentar `extends` de dos clases a la vez (`class X extends A, B`) — no existe esa sintaxis;
  para combinar comportamiento de varias fuentes, la herramienta correcta son los mixins

## 📚 Recursos Adicionales

- [dart.dev — Implicit interfaces](https://dart.dev/language/classes#implicit-interfaces)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Por qué toda clase de Dart es también una interfaz implícita
- [ ] Qué NO se hereda al usar `implements` (a diferencia de `extends`)
- [ ] Cuándo `implements` múltiple resuelve algo que `extends` no puede

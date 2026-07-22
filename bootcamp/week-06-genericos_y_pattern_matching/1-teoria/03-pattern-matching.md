# Pattern Matching

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- La diferencia entre `switch` statement y `switch` expression
- Patrones básicos: constante, variable, wildcard (`_`) y lógico (`||`)
- Cómo desestructurar objetos y records dentro de un `case` (object patterns)
- Cómo filtrar un `case` con una cláusula de guarda (`when`)
- Cómo probar un patrón puntual con `if-case`

## 📋 Conceptos Clave

### 1. `switch` expression — retorna un valor, exhaustivo

```dart
String describeStock(int stock) => switch (stock) {
  0 => 'Agotado',
  1 || 2 => 'Bajo stock', // patrón lógico: coincide con 1 O 2
  _ => 'Disponible', // wildcard: cualquier otro valor
};

void main() {
  print(describeStock(0)); // Agotado
  print(describeStock(2)); // Bajo stock
}
```

A diferencia del `switch` **statement** clásico (con `case`/`break`), el `switch` **expression**
se evalúa como un valor con `=>` por rama, sin `break`, y el analyzer exige que cubra **todos**
los casos posibles (por eso el `_` final).

### 2. Object pattern — desestructura campos de una clase

```dart
class Book {
  const Book(this.title, this.stock);
  final String title;
  final int stock;
}

String status(Book book) => switch (book) {
  Book(stock: 0) => '${book.title}: agotado',
  Book(:final stock) when stock < 3 => '${book.title}: bajo stock ($stock)',
  Book() => '${book.title}: disponible',
};
```

`Book(stock: 0)` coincide solo si el campo `stock` es `0`. `Book(:final stock)` es el shorthand
que **extrae** el campo `stock` a una variable local `stock` — combinado con la cláusula `when`
(guarda), filtra ese `case` con una condición extra.

> ⚠️ Si la guarda `when` es `false`, ese `case` **no** coincide y Dart continúa evaluando los
> siguientes `case` — no es un error, es la forma en que la guarda se integra al flujo normal.

### 3. Patrón de lista — desestructura un `List`

```dart
String describeBatch(List<String> titles) => switch (titles) {
  [] => 'Sin libros',
  [final only] => 'Un libro: $only',
  [final first, final second] => '$first y $second',
  [final first, ...] => '$first y otros', // ... captura el resto sin nombrarlo
};
```

Cada patrón de lista coincide según el **número de elementos** y opcionalmente los captura por
posición — `...` (rest) indica "cero o más elementos adicionales" sin necesidad de nombrarlos.

### 4. Patrón de record — combina con destructuring (ver `02-records.md`)

```dart
String greet((String, int) entry) => switch (entry) {
  (final title, 0) => '$title sin copias',
  (final title, final copies) => '$title: $copies copias',
};
```

Un record también es un patrón válido en un `switch` — se desestructura igual que en una
declaración de variable (`final (title, copies) = ...`).

### 5. `if-case` — probar un patrón sin exhaustividad

```dart
void main() {
  final Object input = ('Dune', 5);

  if (input case (String title, int copies)) {
    print('$title: $copies'); // Dune: 5
  } else {
    print('No coincide');
  }
}
```

`if-case` prueba **un solo** patrón contra un valor, sin necesidad de cubrir todos los casos
(no es exhaustivo como el `switch`) — útil cuando solo te interesa un caso puntual.

## ⚠️ Errores Comunes

- Olvidar el `_` (wildcard) en un `switch` expression no exhaustivo — error de compilación, el
  analyzer necesita saber que **todo** valor posible tiene una rama
- Confundir la cláusula `when` con otro `case` independiente — es parte del **mismo** `case`; si
  falla, Dart sigue evaluando el resto de casos, no lanza una excepción
- Usar `switch` statement clásico con `break` cuando solo necesitas retornar un valor — el
  `switch` expression es más corto y ya es exhaustivo por diseño

## 📚 Recursos Adicionales

- [dart.dev — Patterns](https://dart.dev/language/patterns)
- [dart.dev — Branches (switch statements and expressions)](https://dart.dev/language/branches)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] La diferencia entre `switch` statement y `switch` expression
- [ ] Cómo funciona el patrón lógico (`||`) y el wildcard (`_`)
- [ ] Cómo desestructurar un objeto con `Clase(:final campo)` dentro de un `case`
- [ ] Qué hace la cláusula `when` y qué pasa si su condición es falsa
- [ ] Cuándo usar `if-case` en vez de un `switch` completo

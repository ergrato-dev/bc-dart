# Assert y Estrategia de Errores

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Para qué sirve `assert()` y en qué se diferencia de una excepción
- Por qué `assert` se elimina en compilaciones release y qué implica eso
- Cuándo usar `assert` frente a validar con `Exception` o `Result`
- Cómo combinar los tres mecanismos en una estrategia de errores coherente

## 📋 Conceptos Clave

### 1. `assert()` — verifica una invariante interna

```dart
class BookLoan {
  BookLoan(this.bookId, this.days) : assert(days > 0, 'days debe ser positivo');

  final String bookId;
  final int days;
}

void main() {
  final loan = BookLoan('b1', 7);
  print('Préstamo de ${loan.days} días');
}
```

`assert(condición, mensaje)` verifica una condición que **debería ser siempre verdadera** si el
código está correcto. Si es falsa, lanza un `AssertionError` inmediatamente — a diferencia de
una excepción de negocio, un `assert` fallido significa **hay un bug**, no un caso a manejar.

### 2. `assert` se elimina en release — no valides input de usuario con él

```dart
void createLoan(String bookId, int days) {
  assert(days > 0); // solo protege durante desarrollo/testing

  if (days <= 0) {
    // esta validación SÍ se ejecuta siempre, incluso en release
    throw ArgumentError('days debe ser positivo, recibido: $days');
  }

  print('Préstamo de $bookId por $days días');
}
```

Dart ejecuta los `assert` en modo debug (`dart run`, tests), pero los **elimina por completo**
en compilaciones release (`dart compile exe`, `dart compile aot-snapshot`). Si un `assert` fuera
la única validación de un dato que viene de un usuario o de una API externa, esa validación
**desaparecería** en producción — por eso el input externo siempre se valida con `if`/`throw` o
`Result`, nunca solo con `assert`.

### 3. Tabla de decisión: `assert` vs `Exception` vs `Result`

| Mecanismo   | Verifica...                                   | ¿Se ejecuta en producción? |
| ------------ | ----------------------------------------------- | ---------------------------- |
| `assert`     | Invariantes internas — "esto nunca debería pasar si el código es correcto" | ❌ No (se elimina en release)  |
| `Exception` + `throw` | Condiciones excepcionales reales de fuentes externas (IO, red, formato) | ✅ Sí                          |
| `Result<T>`  | Fallos esperados y frecuentes de la lógica de negocio (validación)         | ✅ Sí                          |

### 4. Estrategia combinada — el resumen de la semana

```dart
class Book {
  Book(this.title, this.copies) : assert(copies >= 0, 'copies no puede ser negativo');

  final String title;
  int copies;
}

sealed class LoanResult {
  const LoanResult();
}

class LoanApproved extends LoanResult {
  const LoanApproved();
}

class LoanRejected extends LoanResult {
  const LoanRejected(this.reason);
  final String reason;
}

LoanResult tryLoan(Book book) {
  if (book.copies == 0) return const LoanRejected('Sin copias disponibles');
  book.copies -= 1;
  return const LoanApproved();
}
```

- `assert(copies >= 0, ...)` protege una invariante **interna** de la clase (bug si se rompe)
- `LoanResult` (con `Ok`/`Err` a la manera de la semana 6) maneja el fallo **esperado y frecuente**
  ("sin copias") como parte del flujo normal de negocio
- Una `Exception` real quedaría reservada para algo como "no se pudo escribir el registro de
  préstamo en disco" — un fallo externo verdadero, no una regla de negocio

## ⚠️ Errores Comunes

- Usar `assert` para validar datos que vienen de un usuario o de una API — desaparece en release
  y el programa queda sin esa protección
- Envolver **todo** en `try`/`catch` "por si acaso", incluyendo invariantes que deberían ser
  `assert` — oculta bugs de desarrollo hasta que llegan a producción
- No decidir de antemano si un fallo es "de negocio" (`Result`) o "excepcional" (`Exception`) —
  termina mezclando ambos estilos en el mismo módulo de forma inconsistente

## 📚 Recursos Adicionales

- [dart.dev — Assert](https://dart.dev/language/error-handling#assert)
- [dart.dev — dart compile](https://dart.dev/tools/dart-compile)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Qué verifica un `assert` y qué significa que falle
- [ ] Por qué `assert` no sirve para validar input de usuario en producción
- [ ] Cuándo usar `assert`, cuándo `Exception`, y cuándo `Result` en un mismo programa

/// Ejercicio 02 — Patrón Result y Assert
/// Qué: practicar Result<T> sellado consumido con switch exhaustivo, y assert para invariantes.
/// Para qué: modelar fallos esperados de negocio como valores, y proteger invariantes internas
/// sin depender de excepciones para lo que el compilador puede verificar.
/// Impacto: sin esto, cada fallo de negocio se vuelve una excepción que el llamador puede
/// olvidar manejar, y las invariantes internas solo se descubren cuando ya rompieron algo.

void main() {
  print('=== Ejercicio 02: Patrón Result y Assert ===');

  // ============================================
  // PASO 1: Result<T> sellado — declarar Ok/Err
  // Descomenta las siguientes líneas:
  // ============================================
  // final result = parseAge('25');
  // print(result is Ok<int>);

  // ============================================
  // PASO 2: consumir Result<T> con switch exhaustivo
  // Descomenta las siguientes líneas:
  // ============================================
  // print(describeAge(parseAge('25')));
  // print(describeAge(parseAge('abc')));

  // ============================================
  // PASO 3: assert — proteger una invariante interna
  // Descomenta las siguientes líneas:
  // ============================================
  // final loan = BookLoan('b1', 7);
  // print('Préstamo de ${loan.days} días');

  // ============================================
  // PASO 4: estrategia combinada — assert + Result
  // Descomenta las siguientes líneas:
  // ============================================
  // final book = Book('Dune', 1);
  // print(describeLoan(tryLoan(book)));
  // print(describeLoan(tryLoan(book)));
}

// PASO 1 y 2: descomenta esta jerarquía y funciones junto con las llamadas correspondientes.
// sealed class Result<T> {
//   const Result();
// }
//
// class Ok<T> extends Result<T> {
//   const Ok(this.value);
//   final T value;
// }
//
// class Err<T> extends Result<T> {
//   const Err(this.message);
//   final String message;
// }
//
// Result<int> parseAge(String raw) {
//   final value = int.tryParse(raw);
//   if (value == null) return Err('"$raw" no es un número válido');
//   return Ok(value);
// }
//
// String describeAge(Result<int> result) => switch (result) {
//   Ok(:final value) => 'Edad válida: $value',
//   Err(:final message) => 'Error: $message',
// };

// PASO 3: descomenta esta clase junto con la llamada del paso 3.
// class BookLoan {
//   BookLoan(this.bookId, this.days) : assert(days > 0, 'days debe ser positivo');
//   final String bookId;
//   final int days;
// }

// PASO 4: descomenta esta jerarquía y funciones junto con las llamadas del paso 4.
// class Book {
//   Book(this.title, this.copies) : assert(copies >= 0, 'copies no puede ser negativo');
//   final String title;
//   int copies;
// }
//
// sealed class LoanResult {
//   const LoanResult();
// }
//
// class LoanApproved extends LoanResult {
//   const LoanApproved();
// }
//
// class LoanRejected extends LoanResult {
//   const LoanRejected(this.reason);
//   final String reason;
// }
//
// LoanResult tryLoan(Book book) {
//   if (book.copies == 0) return const LoanRejected('Sin copias disponibles');
//   book.copies -= 1;
//   return const LoanApproved();
// }
//
// String describeLoan(LoanResult result) => switch (result) {
//   LoanApproved() => 'Préstamo aprobado',
//   LoanRejected(:final reason) => 'Rechazado: $reason',
// };

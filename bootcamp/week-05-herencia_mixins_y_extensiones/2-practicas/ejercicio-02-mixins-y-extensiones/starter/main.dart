/// Ejercicio 02 — Mixins y Extension Methods
/// Qué: practicar mixins con `with`, composición de varios mixins y extension methods.
/// Para qué: reutilizar comportamiento sin herencia múltiple, y extender tipos existentes.
/// Impacto: sin esto duplicarías lógica compartida entre clases sin relación de herencia.

void main() {
  print('=== Ejercicio 02: Mixins y Extension Methods ===');

  // ============================================
  // PASO 1: declarar un mixin y aplicarlo con with
  // Descomenta las siguientes líneas:
  // ============================================
  // final book = LoanableBook('Clean Code');
  // book.loan();
  // print(book.isOnLoan);

  // ============================================
  // PASO 2: combinar dos mixins — el orden importa
  // Descomenta las siguientes líneas:
  // ============================================
  // final fullFeatured = FullFeaturedBook();
  // print(fullFeatured.status());

  // ============================================
  // PASO 3: extension method sobre String
  // Descomenta las siguientes líneas:
  // ============================================
  // print('clean code'.capitalize());

  // ============================================
  // PASO 4: extensión sobre un tipo genérico (List<int>)
  // Descomenta las siguientes líneas:
  // ============================================
  // final copies = [3, 0, 5];
  // print(copies.total);
}

// PASO 1 y 2: descomenta estas clases y mixins junto con las llamadas correspondientes.
// mixin Loanable {
//   bool isOnLoan = false;
//
//   void loan() => isOnLoan = true;
//
//   String status() => 'Prestado';
// }
//
// mixin Reservable {
//   String status() => 'Reservado';
// }
//
// class Book {}
//
// class LoanableBook extends Book with Loanable {
//   LoanableBook(this.title);
//
//   final String title;
// }
//
// class FullFeaturedBook extends Book with Loanable, Reservable {}

// PASO 3: descomenta esta extensión junto con la llamada del paso 3.
// extension StringFormatting on String {
//   String capitalize() {
//     if (isEmpty) return this;
//     return '${this[0].toUpperCase()}${substring(1)}';
//   }
// }

// PASO 4: descomenta esta extensión junto con la llamada del paso 4.
// extension CatalogSummary on List<int> {
//   int get total => fold<int>(0, (sum, value) => sum + value);
// }
